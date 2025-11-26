// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFWEAPS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~GFWEAPS~

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5559 /* ~"GUARDS! GUARDS! The intruder is over here!"~ */
  IF ~~ THEN REPLY #5560 /* ~Done.~ */ EXIT
END

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5561 /* ~"Sorry. I can't talk to you right now. Perhaps when you come back."~ */
  IF ~~ THEN REPLY #5562 /* ~Leave.~ */ EXIT
END

IF ~  Global("Sabotage","GLOBAL",6)
~ THEN BEGIN 2 // from:
  SAY #5563 /* ~"Can't thank you enough for scragging that crazy engineer. Who knew she was an Anarchist? We could all've been killed! What can I help you with?"~ */
  IF ~~ THEN REPLY #5564 /* ~"You can tell me who this project is being built for."~ */ GOTO 3
  IF ~~ THEN REPLY #5565 /* ~"You mentioned something about a critical phase before?"~ */ GOTO 24
  IF ~~ THEN REPLY #5566 /* ~"What is this project?"~ */ GOTO 17
  IF ~~ THEN REPLY #5567 /* ~"What's this thing do?"~ */ GOTO 18
  IF ~~ THEN REPLY #5568 /* ~"Why the secrecy?"~ */ GOTO 19
  IF ~~ THEN REPLY #5569 /* ~"How long till it's done?"~ */ GOTO 20
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5570 /* ~"I'm curious if you can tell me anything about the murder in the main foundry area."~ */ GOTO 4
  IF ~  !Dead("Kellera")
~ THEN REPLY #5571 /* ~"What can you tell me about your boss?"~ */ GOTO 5
  IF ~  Dead("Kellera")
~ THEN REPLY #5572 /* ~"What can you tell me about your boss?"~ */ GOTO 13
  IF ~  !Global("Sabotage","GLOBAL",6)
!Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5573 /* ~"Tell me about the engineers on this project."~ */ GOTO 6
  IF ~~ THEN REPLY #5574 /* ~"Can you tell me where to find the clerk's office?"~ */ GOTO 7
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5576 /* ~"Tell me about the Godsmen."~ */ GOTO 8
  IF ~  False()
!Global("Sabotage","GLOBAL",6)
!Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5577 /* ~"Tell me about the engineers on this project."~ */ GOTO 9
  IF ~  Global("Sabotage","GLOBAL",6)
!Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5578 /* ~"Tell me about the engineers on this project."~ */ GOTO 10
  IF ~  !Global("Sabotage","GLOBAL",6)
Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5579 /* ~"Tell me about the engineers on this project."~ */ GOTO 11
  IF ~~ THEN REPLY #5580 /* ~"Nothing right now, thanks."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 14.6
  SAY #5575 /* ~"No, I can't tell you that. For one thing, I don't know. For another, I signed a secrecy contract that binds my life to the integrity of the project. If the project fails, I could die - and so could all my friends here. I ain't taking that risk."~ */
  IF ~~ THEN REPLY #5581 /* ~"Fair enough. Tell me something else, then."~ */ GOTO 14
  IF ~~ THEN REPLY #5582 /* ~"Fine. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.6 14.7
  SAY #5583 /* ~"A horrible thing. I hear the victim was a bit of a berk, but that don't mean he should be shoved in the gears like that. Since the Foundry's been closed for the main part of a year while we get this work out of the way, it had to've been someone from in here. All I can say is that I can vouch for the whereabouts of all of us workers - we haven't been out of each others' sight long enough to do that."~ */
  IF ~~ THEN REPLY #5584 /* ~"I see. Then can you answer other questions for me?"~ */ GOTO 14
  IF ~~ THEN REPLY #5585 /* ~"Good enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.7 14.8 16.0
  SAY #5586 /* ~"You can usually find her in here somewhere. She's a githzerai who got exiled from her people. She's working here because she doesn't get seen much and so her shame is lessened. She's brilliant and hard-minded."~ */
  IF ~  Global("Kellera_Met_Dakkon","AR0512",0)
NearbyDialog("DDakkon")
~ THEN REPLY #5587 /* ~"I wonder if she'd talk to my friend Dak'kon here."~ */ EXTERN ~DDAKKON~ 6
  IF ~~ THEN REPLY #5588 /* ~"Then perhaps I'll speak to her later. I have more questions for you."~ */ GOTO 14
  IF ~~ THEN REPLY #5589 /* ~"Thank you for your time. Good day."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.9 14.10
  SAY #5590 /* ~"Our chief engineer, Nihl Xander, is a genius. He has created works I never dreamed possible. Word is he has even created a folding portal, and is working on a Dreambuilder in his spare time. It was said that, long ago, his family was contracted to create this machine for a man who could not dream himself.
Our other engineer, Bedai-Lihn, is newer but equally bright. She's a little erratic, but her work shows great promise and skill."

"You can usually find them in the main meeting hall."~ */
  IF ~~ THEN REPLY #5591 /* ~"Great. In the meantime, I had more questions for you."~ */ GOTO 14
  IF ~~ THEN REPLY #5592 /* ~"A dreaming machine, eh? Perhaps I'll seek him out."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.10 14.11
  SAY #5593 /* ~"You can find the clerk's office right off the main foundry."~ */
  IF ~~ THEN REPLY #5594 /* ~"Thanks. Answer me something else."~ */ GOTO 14
  IF ~~ THEN REPLY #5595 /* ~"Thanks."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.11 14.12
  SAY #5596 /* ~"What do I think about the Godsmen? One of the best things about this faction is that we genuinely care about people - not just faction members, but everyone. All of us can be gods and more than gods, someday, and that's why we help everyone. Otherwise, we're selfish and more than selfish - we're stupid. And we ain't stupid."~ */
  IF ~~ THEN REPLY #5597 /* ~"Time will tell. Answer me another question."~ */ GOTO 14
  IF ~~ THEN REPLY #5598 /* ~"Right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.12 14.13
  SAY #5599 /* ~"You already know Bedai-Lihn has been snatched for murder. She was good - but untrustworthy. How were we to know that she was a killer?"

"Our chief engineer is Nihl Xander, a brilliant old man. Word is he has created a folding portal, and is working on a Dreambuilder in his spare time. It was said that, long ago, his family was contracted to create this machine for a man who could not dream himself. You can usually find him in the main meeting hall."~ */
  IF ~~ THEN REPLY #5600 /* ~"Great. I've got another question."~ */ GOTO 14
  IF ~~ THEN REPLY #5601 /* ~"A Dreambuilder? I'll go find him."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.13 14.14
  SAY #5602 /* ~"Thank the powers you stopped that bitch Bedai-Lihn from sabotaging us. It would have meant our lives."

"As for our other engineer, Nihl Xander, you can usually find him in the main meeting hall. He's devised a host of ingenious devices in his lifetime, and chances are good he's not done."~ */
  IF ~~ THEN REPLY #5603 /* ~"Thanks. Tell me something else."~ */ GOTO 14
  IF ~~ THEN REPLY #5604 /* ~"Chances are, huh? Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.14 14.15
  SAY #5605 /* ~"Who knew that Bedai-Lihn would be attempting to overthrow the very structure of the Godsmen? We knew she was a capable magical engineer - we didn't know she was an anarchist."

"As for Nihl Xander: you can usually find him in the main meeting hall. He's devised a host of ingenious devices in his lifetime, and chances are good he's not done."~ */
  IF ~~ THEN REPLY #5606 /* ~"Indeed. Who knew? I had more questions."~ */ GOTO 14
  IF ~~ THEN REPLY #5607 /* ~"Maybe I'll go look for him, then. Good day."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 15.0 15.3
  SAY #5608 /* ~He scrutinizes you, and then apparently decides to trust you. "Heh... right now, what aren't the weak points? The outer shell is still weak - we haven't hardened it yet. The firing ports have their weapons, but the weapons are dangerously unstable right now. And the steam boiler inside it could blow with all the strain we're putting on it. The thing's practically waiting to fall apart. I'd say the biggest vulnerability is the firing mechanism on the end there. And if it goes, all us workers go with it."~ */
  IF ~~ THEN REPLY #5609 /* ~"Thanks. I had other questions."~ */ GOTO 14
  IF ~~ THEN REPLY #5610 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.8 14.9 16.1
  SAY #5611 /* ~"You want to know about Kel'lera? Some soddin' bastard killed her, and that's all I have to say about her. This conversation's over. Leave. Guards! Get this berk out of here!"~ */
  IF ~~ THEN REPLY #5612 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.0 4.0 5.1 6.0 7.0 8.0 9.0 10.0 11.0 12.0 15.6 17.3 18.3 19.4 20.4 21.0 22.1 23.1 24.1 25.0
  SAY #5613 /* ~"Yeah? What'd you want to know?"~ */
  IF ~  GlobalLT("Sabotage","GLOBAL",4)
GlobalGT("Sabotage","GLOBAL",1)
~ THEN REPLY #5614 /* ~"What are the weak points on this thing, anyway?"~ */ GOTO 15
  IF ~~ THEN REPLY #5615 /* ~"You mentioned something about a critical phase before?"~ */ GOTO 24
  IF ~~ THEN REPLY #5616 /* ~"What is this project?"~ */ GOTO 17
  IF ~~ THEN REPLY #5617 /* ~"What's this thing do?"~ */ GOTO 18
  IF ~~ THEN REPLY #5618 /* ~"Why the secrecy?"~ */ GOTO 19
  IF ~~ THEN REPLY #5619 /* ~"How long till it's done?"~ */ GOTO 20
  IF ~~ THEN REPLY #5620 /* ~"You can tell me who this project is being built for."~ */ GOTO 3
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5621 /* ~"I'm curious if you can tell me anything about the murder in the main foundry area."~ */ GOTO 4
  IF ~  !Dead("Kellera")
~ THEN REPLY #5622 /* ~"What can you tell me about your boss?"~ */ GOTO 5
  IF ~  Dead("Kellera")
~ THEN REPLY #5623 /* ~"What can you tell me about your boss?"~ */ GOTO 13
  IF ~  !Global("Sabotage","GLOBAL",6)
!Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5624 /* ~"Tell me about the engineers on this project."~ */ GOTO 6
  IF ~~ THEN REPLY #5626 /* ~"Can you tell me where to find the clerk's office?"~ */ GOTO 7
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5627 /* ~"Tell me about the Godsmen."~ */ GOTO 8
  IF ~  False()
!Global("Sabotage","GLOBAL",6)
!Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5628 /* ~"Tell me about the engineers on this project."~ */ GOTO 9
  IF ~  Global("Sabotage","GLOBAL",6)
!Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5629 /* ~"Tell me about the engineers on this project."~ */ GOTO 10
  IF ~  !Global("Sabotage","GLOBAL",6)
Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5630 /* ~"Tell me about the engineers on this project."~ */ GOTO 11
  IF ~  False()
~ THEN REPLY #16224 /* ~"What is this project?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #5631 /* ~"Nothing right now, thanks."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #5625 /* ~He looks at you suspiciously. "Why do you want to know?"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #5632 /* ~"Because I do a little magical engineering myself and thought it might be possible to help optimize the work. If you pointed out the weak spots to me, I might be able to offer you some solutions."~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #5633 /* ~"Because I do a little magical engineering myself and thought it might be possible to help optimize the work. If you pointed out the weak spots to me, I might be able to offer you some solutions."~ */ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #5634 /* ~"Because this whole thing looks really fragile."~ */ GOTO 16
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #5635 /* ~"Because I've been granted authority to look at this project, and I would like to know its flaws."~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ GOTO 12
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #5636 /* ~"Because I've been granted authority to look at this project, and would like to know its flaws."~ */ GOTO 16
  IF ~~ THEN REPLY #5637 /* ~"I was just curious, that's all."~ */ GOTO 16
  IF ~~ THEN REPLY #5638 /* ~"Forget it. I had other questions."~ */ GOTO 14
  IF ~~ THEN REPLY #5639 /* ~"Forget I asked. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1 15.2 15.4 15.5
  SAY #5640 /* ~He looks at you even more suspiciously. "I'm not going to answer that. You want to know something like that, you talk to Kel'lera, not me."~ */
  IF ~  !Dead("Kellera")
~ THEN REPLY #5641 /* ~"Where is Kel'lera?"~ */ GOTO 5
  IF ~  Dead("Kellera")
~ THEN REPLY #5642 /* ~"Where is Kel'lera?"~ */ GOTO 13
  IF ~~ THEN REPLY #5643 /* ~"No, forget I asked. Good day."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.2 14.2 14.16 18.0 19.1 20.1
  SAY #5644 /* ~"It's a weapon, I think. We're not sure if it's for war or for hunting - and powers above, if it's for hunting I don't want to see the creature it's designed to kill - but when we're done, it's going to be on a par with that Chaos Ship the Doomguard built a few years back with the tanar'ri. At least, that's the theory."~ */
  IF ~~ THEN REPLY #5645 /* ~"What does it do?"~ */ GOTO 18
  IF ~~ THEN REPLY #5646 /* ~"Why all the secrecy?"~ */ GOTO 19
  IF ~~ THEN REPLY #5647 /* ~"How long till it's done?"~ */ GOTO 20
  IF ~~ THEN REPLY #5648 /* ~"I have other questions."~ */ GOTO 14
  IF ~~ THEN REPLY #5649 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.3 14.3 17.0 19.2 20.2
  SAY #5650 /* ~"You know, I'm not entirely sure. You'd have to speak to one of the engineers for that information. I know that it has a massive, focused beam of heat - we've perfected that part of it, at least. We've even mounted it permanently into the device. There are other aspects to the thing that we've not even begun work on yet. We're not allowed to see them until we're done with each portion."~ */
  IF ~~ THEN REPLY #5651 /* ~"What is it, again?"~ */ GOTO 17
  IF ~~ THEN REPLY #5652 /* ~"Why all the secrecy?"~ */ GOTO 19
  IF ~~ THEN REPLY #5653 /* ~"How long till it's done?"~ */ GOTO 20
  IF ~~ THEN REPLY #5654 /* ~"Answer some other questions, if you would."~ */ GOTO 14
  IF ~~ THEN REPLY #5655 /* ~"Thanks. Bye."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.4 14.4 17.1 18.1 20.3
  SAY #5656 /* ~"If you knew an enemy was creating a weapon to use against you, wouldn't you do everything in your power to destroy it? We've got no idea who it's for, even. We're just trusting the word of the high-ups that it won't be used in a way we'll disagree with. None of us know who's asking us to make it, so there's no chance we'll spill the dark of it to someone who wants to see it destroyed... especially because we've all sealed our lives on it."~ */
  IF ~~ THEN REPLY #5657 /* ~"What do you mean by that?"~ */ GOTO 21
  IF ~~ THEN REPLY #5658 /* ~"What is it, again?"~ */ GOTO 17
  IF ~~ THEN REPLY #5659 /* ~"And what does it do?"~ */ GOTO 18
  IF ~~ THEN REPLY #5660 /* ~"How long till it's done?"~ */ GOTO 20
  IF ~~ THEN REPLY #5661 /* ~"Answer some other questions, if you would."~ */ GOTO 14
  IF ~~ THEN REPLY #5662 /* ~"Thanks. Bye."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.5 14.5 17.2 18.2 19.3
  SAY #5663 /* ~"It probably won't be done for another decade - but the trickiest part of it will be done this year. There are some magical rituals that have to be done, and those take time. We'll all breathe easier knowing we're not sealed to a project that's going to detonate because it's unstable."~ */
  IF ~~ THEN REPLY #5664 /* ~"Sealed? What do you mean by that?"~ */ GOTO 21
  IF ~~ THEN REPLY #5665 /* ~"What is it, again?"~ */ GOTO 17
  IF ~~ THEN REPLY #5666 /* ~"And what does it do?"~ */ GOTO 18
  IF ~~ THEN REPLY #5667 /* ~"Why all the secrecy?"~ */ GOTO 19
  IF ~~ THEN REPLY #5668 /* ~"I have other questions for you."~ */ GOTO 14
  IF ~~ THEN REPLY #5669 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0 20.0
  SAY #5670 /* ~"Because of the nature of this project - with the secrecy and all that, not to mention the magicks that allow us to even work on the machine - we've had to seal a part of our lives into the machine. We get our lives back when the project's done - but if it malfunctions, or powers forbid, gets sabotaged, it takes our lives when it blows."~ */
  IF ~~ THEN REPLY #5671 /* ~"That sounds bad. I have other questions for you, though."~ */ GOTO 14
  IF ~~ THEN REPLY #5672 /* ~"That sounds bad. Good luck with it. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 22 // from:
  SAY #5673 /* ~You see a tiefling clad in Godsmen clothing, carefully examining the thing in the center of the room. "I can't really talk right now. We're at a critical phase."~ */
  IF ~~ THEN REPLY #5674 /* ~"A critical phase? Of what?"~ */ GOTO 24
  IF ~~ THEN REPLY #5675 /* ~"I was hoping you could answer me some questions."~ */ GOTO 14
  IF ~~ THEN REPLY #5676 /* ~"Sorry to disturb you, then. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 23 // from:
  SAY #5677 /* ~"You again? What do you need this time?"~ */
  IF ~~ THEN REPLY #5678 /* ~"You mentioned something about a critical phase before?"~ */ GOTO 24
  IF ~~ THEN REPLY #5679 /* ~"I had some questions for you."~ */ GOTO 14
  IF ~~ THEN REPLY #5680 /* ~"Then in that case, I'll leave you alone. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 2.1 14.1 22.0 23.0
  SAY #5681 /* ~"Yes. This project we're working on is a weapon that could have massive peacetime applications as well. We're not close to the end, but we are at a delicate phase - delicate enough that it could put us all in the dead-book if some berk fails us now."~ */
  IF ~~ THEN REPLY #5682 /* ~"What is it you're doing?"~ */ GOTO 25
  IF ~~ THEN REPLY #5683 /* ~"Oh. I had other questions."~ */ GOTO 14
  IF ~~ THEN REPLY #5684 /* ~"I see. Good luck."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #5685 /* ~"We're adjusting the variables in the device's lower magical resonances. One mistake could sink the whole project, and if the project goes under, it'll take us all out in the resulting magical wave."~ */
  IF ~~ THEN REPLY #5686 /* ~"I see. Can you answer some other questions?"~ */ GOTO 14
  IF ~~ THEN REPLY #5687 /* ~"I see. Farewell."~ */ EXIT
END
