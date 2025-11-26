// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJUSTFER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DJUSTFER~

IF ~  Global("Current_Lower_Planes","GLOBAL",1)
GlobalLT("Justifier_Lower_Planes","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #47616 /* ~"What? What do you want? When does the blood start spilling?"~ */
  IF ~~ THEN REPLY #47617 /* ~"What's with the attitude?"~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",1)
~ GOTO 9
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47618 /* ~"What happened to your good-natured disposition?"~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #47619 /* ~"Soon. I just need you to answer some questions for me."~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #47620 /* ~"In a while. Go back to sleep."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
SetGlobal("Justifier_Lower_Planes","GLOBAL",1)
~ EXIT
END

IF ~  Global("Current_Lower_Planes","GLOBAL",1)
Global("Justifier_Lower_Planes","GLOBAL",2)
~ THEN BEGIN 1 // from:
  SAY #47621 /* ~"What? What do you want? When does the blood start spilling?"~ */
  IF ~~ THEN REPLY #47622 /* ~"What's with the attitude?"~ */ GOTO 9
  IF ~~ THEN REPLY #47623 /* ~"What happened to your good-natured disposition?"~ */ GOTO 7
  IF ~~ THEN REPLY #47624 /* ~"Soon. I just need you to answer some questions for me."~ */ GOTO 8
  IF ~~ THEN REPLY #47625 /* ~"In a while. Go back to sleep."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 2 // from:
  SAY #47626 /* ~"What? What do you want? When does the blood start spilling?"~ */
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47627 /* ~"What's with the attitude?"~ */ GOTO 9
  IF ~~ THEN REPLY #47628 /* ~"What happened to your good-natured disposition?"~ */ GOTO 7
  IF ~~ THEN REPLY #47629 /* ~"Soon. I just need you to answer some questions for me."~ */ GOTO 8
  IF ~~ THEN REPLY #47630 /* ~"In a while. Go back to sleep."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #47631 /* ~"What? What do you want? When does the blood start spilling?"~ */
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47632 /* ~"What's with the attitude?"~ */ GOTO 9
  IF ~~ THEN REPLY #47633 /* ~"What happened to your good-natured disposition?"~ */ GOTO 7
  IF ~~ THEN REPLY #47634 /* ~"Soon. I just need you to answer some questions for me."~ */ GOTO 8
  IF ~~ THEN REPLY #47635 /* ~"In a while. Go back to sleep."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #47636 /* ~"What? What do you want? When does the blood start spilling?"~ */
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47637 /* ~"What's with the attitude?"~ */ GOTO 9
  IF ~~ THEN REPLY #47638 /* ~"What happened to your good-natured disposition?"~ */ GOTO 7
  IF ~~ THEN REPLY #47639 /* ~"Soon. I just need you to answer some questions for me."~ */ GOTO 8
  IF ~~ THEN REPLY #47640 /* ~"In a while. Go back to sleep."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 5 // from:
  SAY #47641 /* ~"What? What do you want? When does the blood start spilling?"~ */
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47642 /* ~"What's with the attitude?"~ */ GOTO 9
  IF ~~ THEN REPLY #47643 /* ~"What happened to your good-natured disposition?"~ */ GOTO 7
  IF ~~ THEN REPLY #47644 /* ~"Soon. I just need you to answer some questions for me."~ */ GOTO 8
  IF ~~ THEN REPLY #47645 /* ~"In a while. Go back to sleep."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 6 // from:
  SAY #47646 /* ~"What? What do you want? When does the blood start spilling?"~ */
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47648 /* ~"What's with the attitude?"~ */ GOTO 9
  IF ~~ THEN REPLY #47649 /* ~"What happened to your good-natured disposition?"~ */ GOTO 7
  IF ~~ THEN REPLY #47650 /* ~"Soon. I just need you to answer some questions for me."~ */ GOTO 8
  IF ~~ THEN REPLY #47651 /* ~"In a while. Go back to sleep."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.1 1.1 2.1 3.1 4.1 5.1 6.1
  SAY #47652 /* ~"That was then. This is now. I'm sick of all this lollygagging and all this namby-pamby pikery. Let's go kill something, eh?"~ */
  IF ~~ THEN REPLY #47653 /* ~"I want to know what happened to your personality."~ */ GOTO 9
  IF ~~ THEN REPLY #47654 /* ~"Answer some questions for me, first."~ */ GOTO 8
  IF ~~ THEN REPLY #47655 /* ~"Forget it. We'll talk later."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.2 1.2 2.2 3.2 4.2 5.2 6.2 7.1 9.1 13.0 14.0 15.0 16.0 17.1 18.0 19.2 20.0 21.1 22.0 41.2
  SAY #47656 /* ~"Just as long as we kill after we talk."~ */
  IF ~~ THEN REPLY #47657 /* ~"What happened to you?"~ */ GOTO 9
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #47658 /* ~"What can you tell me about Morte?"~ */ GOTO 12
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #47659 /* ~"What can you tell me about Annah?"~ */ GOTO 13
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #47660 /* ~"What can you tell me about Dak'kon?"~ */ GOTO 14
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #47661 /* ~"What can you tell me about Fall-from-Grace?"~ */ GOTO 15
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #47662 /* ~"What can you tell me about Vhailor?"~ */ GOTO 16
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #47663 /* ~"What can you tell me about Ignus?"~ */ GOTO 16
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #47664 /* ~"What can you tell me about Nordom?"~ */ GOTO 16
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47665 /* ~"What can you tell me about yourself?"~ */ GOTO 17
  IF ~  Global("Justifier","GLOBAL",1)
~ THEN REPLY #47666 /* ~"What can you tell me about yourself?"~ */ GOTO 18
  IF ~  GlobalGT("Justifier","GLOBAL",1)
~ THEN REPLY #47667 /* ~"What can you tell me about yourself?"~ */ GOTO 19
  IF ~~ THEN REPLY #47668 /* ~"Forget it. Farewell."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.0 1.0 2.0 3.0 4.0 5.0 6.0 7.0 8.0
  SAY #47669 /* ~"Let's just say that the atmosphere we're in is conducive to hatred and leave it at that, shall we? I *hate* the Lower Planes, and they hate me."~ */
  IF ~~ THEN REPLY #47670 /* ~"Why?"~ */ GOTO 10
  IF ~~ THEN REPLY #47671 /* ~"Answer some questions for me, then."~ */ GOTO 8
  IF ~~ THEN REPLY #47672 /* ~"Good enough. I'm putting you away now."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #47673 /* ~"Because they corrupted me once, and it ain't gonna happen again, berk! Now shut up and let's kill!"~ */
  IF ~~ THEN REPLY #47674 /* ~"Answer some questions, first..."~ */ GOTO 11
  IF ~~ THEN REPLY #47675 /* ~"We're done talking for now."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #47676 /* ~The weapon falls into a sullen silence.~ */
  IF ~~ THEN DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.1
  SAY #47677 /* ~"He's an evil, cross-trading berk and I would trust him as far as I could throw him... if I had arms. You'd be well-advised to look at his advice with a *real* careful eye. I'm just saying that you ought not trust him - I've seen his type before, and they'll stab you in the back."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 488
END

IF ~~ THEN BEGIN 13 // from: 8.2
  SAY #47678 /* ~"I dunno about her. She's got fiendish blood in her. You can't trust fiends. I say dump her as soon as possible. Besides, she's just a kid. You can find someone a lot more... experienced... if you get my drift."~ */
  IF ~~ THEN REPLY #47679 /* ~"Thanks for your input. I had more questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #47680 /* ~"Thanks."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.3
  SAY #47681 /* ~"Him? Dour, expressionless, hidebound? About as useful as intercourse with a modron. That's all I have to say about that."~ */
  IF ~~ THEN REPLY #47682 /* ~"Thanks for your input. I had more questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #47683 /* ~"Thanks."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 8.4
  SAY #47684 /* ~"Sure, trust her, why not. It's always a good idea to trust a tanar'ri. Just because they're born evil doesn't mean they're bad people. By the way, what you're smelling is sarcasm. You just walked right through it."~ */
  IF ~~ THEN REPLY #47685 /* ~"Thanks for your input. I had more questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #47686 /* ~"Thanks."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.5 8.6 8.7
  SAY #47687 /* ~"Beats me. Never seen 'em before."~ */
  IF ~~ THEN REPLY #47688 /* ~"Thanks for your input. I had more questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #47689 /* ~"Thanks."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.8
  SAY #47690 /* ~"I'm The Justifier. Say 'The' when you say the name. 'The Justifier.' Not 'Justifier.' I was forged under the auspices of Horus in Arcadia. Say, you look familiar... I'm called that because I can find an excuse for almost anything. Plus, after a few swings of me, most people realize that you're justified in what you're saying."~ */
  IF ~~ THEN REPLY #47691 /* ~"Familiar how?"~ */ GOTO 20
  IF ~~ THEN REPLY #47692 /* ~"I see. I had some other questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #47693 /* ~"Right. Farewell."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 8.9
  SAY #47694 /* ~"I'm still The Justifier... you know, there's still something familiar about you and it's driving me crazy... something about tanar'ri and... ahh, never mind. I'm your best friend or your worst nightmare. Depends on which end you ask, berk. Name's The Justifier. THE Justifier. Don't forget it."~ */
  IF ~~ THEN REPLY #47695 /* ~"Still haven't figured out where you know me from? All right. I had more questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #47696 /* ~"Still haven't figured it out, huh? Farewell, then."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 8.10
  SAY #47697 /* ~"I remember who you are, now. You used to think you owned me. All the scars threw me off, but I've got your face nailed now. You know something? When you died fighting off those vrocks, they twisted me. I blame you. But you know, blood follows you. If I stick with you, I can be sure of getting wet."~ */
  IF ~~ THEN REPLY #47698 /* ~"What are vrocks?"~ */ JOURNAL #47796 /* ~I have just discovered that The Justifier, a talking mace, used to be a weapon of mine. It doesn't remember much of my past, but apparently we went to the Abyss looking for something and I died.~ */ GOTO 21
  IF ~~ THEN REPLY #47699 /* ~"Twisted you? How?"~ */ JOURNAL #47796 /* ~I have just discovered that The Justifier, a talking mace, used to be a weapon of mine. It doesn't remember much of my past, but apparently we went to the Abyss looking for something and I died.~ */ GOTO 22
  IF ~~ THEN REPLY #47700 /* ~"Forget this. I had more questions..."~ */ JOURNAL #47796 /* ~I have just discovered that The Justifier, a talking mace, used to be a weapon of mine. It doesn't remember much of my past, but apparently we went to the Abyss looking for something and I died.~ */ GOTO 8
  IF ~~ THEN REPLY #47701 /* ~"Forget this."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ JOURNAL #47796 /* ~I have just discovered that The Justifier, a talking mace, used to be a weapon of mine. It doesn't remember much of my past, but apparently we went to the Abyss looking for something and I died.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0
  SAY #47702 /* ~"I don't know. It'll come to me. Don't badger me and I'll get it."~ */
  IF ~~ THEN REPLY #47703 /* ~"Great. I had some more questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #47704 /* ~"Great. Have fun thinking. Farewell."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0
  SAY #47705 /* ~"What are vrocks? You don't remember anything, do you? They're the vulture demons of the tanar'ri. You'd think that after you got your chest torn open by one of their spears that you'd remember a trifling detail like that. We fought 'em, we killed 'em, but one of 'em got lucky and put you in the dead-book... and then they took me and twisted me."~ */
  IF ~~ THEN REPLY #47706 /* ~"Twisted you how?"~ */ GOTO 22
  IF ~~ THEN REPLY #47707 /* ~"Great. I had more questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #47708 /* ~"Too bad. Farewell."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.1 21.0
  SAY #47709 /* ~Its voice sounds almost desperate in its attempt not to remember. "You don't want to know. Their minds are alien and pure evil. Bein' put to use by the likes of that..." It shivers in your grasp. "It's not something you'd want to remember. I'll give 'em this much - they're inventive with their tortures."~ */
  IF ~~ THEN REPLY #47710 /* ~"I had more questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #47711 /* ~"I'll bet. Farewell."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Justifier_Lower_Planes","GLOBAL",1)
~ THEN BEGIN 23 // from:
  SAY #47712 /* ~The Justifier sounds almost embarrassed. "I went a little crazy on those Lower Planes, boss. Sorry. I'll try not to let it happen again."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47713 /* ~"What happened?"~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",2)
~ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47714 /* ~"What happened?"~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",2)
~ GOTO 30
  IF ~~ THEN REPLY #47715 /* ~"No problem. Just answer some questions."~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",2)
~ GOTO 31
  IF ~~ THEN REPLY #47716 /* ~"No problem. Farewell."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
SetGlobal("Justifier_Lower_Planes","GLOBAL",0)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 24 // from:
  SAY #47717 /* ~The Justifier sounds almost embarrassed. "I went a little crazy on those Lower Planes, boss. Sorry. I'll try not to let it happen again."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47718 /* ~"What happened?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47719 /* ~"What happened?"~ */ GOTO 30
  IF ~~ THEN REPLY #47720 /* ~"No problem. Just answer some questions."~ */ GOTO 31
  IF ~~ THEN REPLY #47721 /* ~"No problem. Farewell."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from:
  SAY #47722 /* ~The Justifier sounds almost embarrassed. "I went a little crazy on those Lower Planes, boss. Sorry. I'll try not to let it happen again."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47723 /* ~"What happened?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47724 /* ~"What happened?"~ */ GOTO 30
  IF ~~ THEN REPLY #47725 /* ~"No problem. Just answer some questions."~ */ GOTO 31
  IF ~~ THEN REPLY #47726 /* ~"No problem. Farewell."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #47727 /* ~The Justifier sounds almost embarrassed. "I went a little crazy on those Lower Planes, boss. Sorry. I'll try not to let it happen again."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47729 /* ~"What happened?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47730 /* ~"What happened?"~ */ GOTO 30
  IF ~~ THEN REPLY #47731 /* ~"No problem. Just answer some questions."~ */ GOTO 31
  IF ~~ THEN REPLY #47732 /* ~"No problem. Farewell."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #47728 /* ~The Justifier sounds almost embarrassed. "I went a little crazy on those Lower Planes, boss. Sorry. I'll try not to let it happen again."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47733 /* ~"What happened?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47734 /* ~"What happened?"~ */ GOTO 30
  IF ~~ THEN REPLY #47735 /* ~"No problem. Just answer some questions."~ */ GOTO 31
  IF ~~ THEN REPLY #47736 /* ~"No problem. Farewell."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 28 // from:
  SAY #47737 /* ~The Justifier sounds almost embarrassed. "I went a little crazy on those Lower Planes, boss. Sorry. I'll try not to let it happen again."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47738 /* ~"What happened?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47739 /* ~"What happened?"~ */ GOTO 30
  IF ~~ THEN REPLY #47740 /* ~"No problem. Just answer some questions."~ */ GOTO 31
  IF ~~ THEN REPLY #47741 /* ~"No problem. Farewell."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 29 // from:
  SAY #47742 /* ~The Justifier sounds almost embarrassed. "I went a little crazy on those Lower Planes, boss. Sorry. I'll try not to let it happen again."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47743 /* ~"What happened?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47744 /* ~"What happened?"~ */ GOTO 30
  IF ~~ THEN REPLY #47745 /* ~"No problem. Just answer some questions."~ */ GOTO 31
  IF ~~ THEN REPLY #47746 /* ~"No problem. Farewell."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.1 24.1 25.1 26.1 27.1 28.1 29.1
  SAY #47747 /* ~"Way back when, I was with an owner, we went to the Abyss looking for something. I forget what it was. We figured we were tough enough to take on all comers. We were wrong. My owner got killed and they took me and ... *twisted* me. Sometimes when I get exposed to the Lower Planes, it turns me nasty again."~ */
  IF ~~ THEN REPLY #47748 /* ~"Too bad. I had some questions for you..."~ */ GOTO 31
  IF ~~ THEN REPLY #47749 /* ~"Too bad. Farewell."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 23.2 24.2 25.2 26.2 27.2 28.2 29.2 30.0 32.0 33.0 34.0 35.0 36.0 37.0 38.0 39.1 40.0 42.0 43.1 44.0 45.0 46.0
  SAY #47750 /* ~"Anything you want to know, boss."~ */
  IF ~  GlobalGT("Justifier_Lower_Planes","GLOBAL",0)
~ THEN REPLY #47751 /* ~"What happened to you?"~ */ GOTO 33
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #47752 /* ~"What can you tell me about Morte?"~ */ GOTO 34
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #47753 /* ~"What can you tell me about Annah?"~ */ GOTO 35
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #47754 /* ~"What can you tell me about Dak'kon?"~ */ GOTO 36
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #47755 /* ~"What can you tell me about Fall-from-Grace?"~ */ GOTO 37
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #47756 /* ~"What can you tell me about Vhailor?"~ */ GOTO 38
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #47757 /* ~"What can you tell me about Ignus?"~ */ GOTO 38
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #47758 /* ~"What can you tell me about Nordom?"~ */ GOTO 38
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47759 /* ~"What can you tell me about yourself?"~ */ GOTO 39
  IF ~  Global("Justifier","GLOBAL",1)
~ THEN REPLY #47760 /* ~"What can you tell me about yourself?"~ */ GOTO 40
  IF ~  GlobalGT("Justifier","GLOBAL",1)
~ THEN REPLY #47761 /* ~"What can you tell me about yourself?"~ */ GOTO 41
  IF ~~ THEN REPLY #47762 /* ~"Forget it. Farewell."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.0 24.0 25.0 26.0 27.0 28.0 29.0
  SAY #47763 /* ~"Way back when you were my owner, we went to the Abyss in search of something. I forget what it was. We figured we were tough enough to take on all comers. We were wrong. We ran into a murder of vrocks - the vulture demons of the tanar'ri - and even though we killed a bunch of 'em, one got lucky and tore your heart to pieces with its cruel spear. They took me and ... *twisted* me. Sometimes when I get exposed to the Lower Planes, it turns me nasty again."~ */
  IF ~~ THEN REPLY #47764 /* ~"That's awful. I had some questions for you..."~ */ GOTO 31
  IF ~~ THEN REPLY #47765 /* ~"That's too bad. Farewell."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 31.0
  SAY #47766 /* ~It seems a little embarrassed. "I lost control of the part that got twisted by the tanar'ri when I got lost in the Abyss. I mostly keep it under control. Sorry, boss."~ */
  IF ~~ THEN REPLY #47767 /* ~"No problem. Answer some more questions for me..."~ */ GOTO 31
  IF ~~ THEN REPLY #47768 /* ~"No problem. Farewell."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 31.1
  SAY #47769 /* ~You get the feeling the Eye on the mace is shifting back and forth. It whispers, "I have a bad feeling about him, boss, but I can't put it into words. The skull seems familiar, and it's attached to a lot of bad memories for me. I can't say why, though, because I don't remember..."~ */
  IF ~~ THEN REPLY #47770 /* ~"Maybe later. I had some more questions..."~ */ GOTO 31
  IF ~~ THEN REPLY #47771 /* ~"Maybe later. Farewell."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 31.2
  SAY #47772 /* ~"My honest opinion? Well, she's a little fiery... but I think she's got a thing for you. She hides it, but... I think you can trust her, as long as you don't betray her."~ */
  IF ~~ THEN REPLY #47773 /* ~"Thanks. I had more questions..."~ */ GOTO 31
  IF ~~ THEN REPLY #47774 /* ~"Thanks. Farewell."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 31.3
  SAY #47775 /* ~"There's a good reason he's traveling with you, boss, and I'm not sure it's for your best interests. You know these githzerai - they stick together, and when they associate with others, it's for a reason. I'll keep my Eye on him for you."~ */
  IF ~~ THEN REPLY #47776 /* ~"Thanks. I had a few other questions..."~ */ GOTO 31
  IF ~~ THEN REPLY #47777 /* ~"Thanks for your concern. Farewell."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 31.4
  SAY #47778 /* ~The mace whispers frantically to you. "Boss! What are you doing with a tanar'ri? Two words. Tanar'ri. Succubus. She's evil. Her blood is made of the essence of evil. She can't be trusted. She might play nice, but that doesn't mean a thing. She might tell you she's reformed, but that's just another lie. She and her kind spin webs of deceit. Always. It's their nature."~ */
  IF ~~ THEN REPLY #47779 /* ~"Thanks for your opinion. Answer some more questions..."~ */ GOTO 31
  IF ~~ THEN REPLY #47780 /* ~"Thanks for your opinion. Farewell."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 31.5 31.6 31.7
  SAY #47781 /* ~"Only ... well, only nothing. I don't know these people, boss."~ */
  IF ~~ THEN REPLY #47782 /* ~"All right. Then answer some questions..."~ */ GOTO 31
  IF ~~ THEN REPLY #47783 /* ~"All right. Farewell."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 31.8
  SAY #47784 /* ~"I'm The Justifier. I'm called that because I can find an excuse for almost anything. Plus, after a few swings of me, most people realize that you're justified in what you're saying. I was forged by one of the smiths under the auspices of the god Horus himself, in the plains of Heliopolis in Arcadia. Say... you seem familiar to me..."~ */
  IF ~~ THEN REPLY #47785 /* ~"Familiar how?"~ */ GOTO 42
  IF ~~ THEN REPLY #47786 /* ~"I see. I had some other questions..."~ */ GOTO 31
  IF ~~ THEN REPLY #47787 /* ~"Right. Farewell."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 31.9
  SAY #47788 /* ~"What's there to know? I'm a weapon of goodness and light, and I'm handy to have in a fight. You know, there's still something familiar about you and it's driving me crazy... something about tanar'ri and... ahh, never mind. I'm your best friend or your worst nightmare. It all depends on which end you ask." It laughs loudly at its own joke.~ */
  IF ~~ THEN REPLY #47789 /* ~"Still haven't figured out where you know me from? All right. I had more questions..."~ */ GOTO 31
  IF ~~ THEN REPLY #47790 /* ~"Still haven't figured it out, huh? Farewell, then."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 31.10
  SAY #47791 /* ~"I remember who you are, now! You used to own me, a long time ago. My memory's a little spotty on that time, but... yeah. It's you. All the scars threw me off. You seem much more grim now. You must have had it hard - I used to counsel you when you awoke after a death, but when you died in the Abyss fighting off those vrocks, they took me with them and left you to rot. I'm glad we found each other again."~ */
  IF ~~ THEN REPLY #47792 /* ~"What are vrocks?"~ */ JOURNAL #47796 /* ~I have just discovered that The Justifier, a talking mace, used to be a weapon of mine. It doesn't remember much of my past, but apparently we went to the Abyss looking for something and I died.~ */ GOTO 43
  IF ~  False()
~ THEN REPLY #47793 /* ~"Twisted you? How?"~ */ JOURNAL #47796 /* ~I have just discovered that The Justifier, a talking mace, used to be a weapon of mine. It doesn't remember much of my past, but apparently we went to the Abyss looking for something and I died.~ */ GOTO 44
  IF ~~ THEN REPLY #47794 /* ~"Forget this. I had more questions..."~ */ JOURNAL #47796 /* ~I have just discovered that The Justifier, a talking mace, used to be a weapon of mine. It doesn't remember much of my past, but apparently we went to the Abyss looking for something and I died.~ */ GOTO 8
  IF ~~ THEN REPLY #47795 /* ~"Forget this."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ JOURNAL #47796 /* ~I have just discovered that The Justifier, a talking mace, used to be a weapon of mine. It doesn't remember much of my past, but apparently we went to the Abyss looking for something and I died.~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 39.0
  SAY #47797 /* ~"I'm sorry, but I really can't recall right now... give me a little more time, and I'm sure I'll remember."~ */
  IF ~~ THEN REPLY #47798 /* ~"Great. I had some more questions..."~ */ GOTO 31
  IF ~~ THEN REPLY #47799 /* ~"Great. Have fun thinking. Farewell."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.0
  SAY #47800 /* ~"They're the vulture demons of the tanar'ri. You fought valiantly, but they were too many. They got lucky and got past our defenses, and they tore your heart out with a barbed spear and left you bleeding. Then they took me and twisted me... it was awful..."~ */
  IF ~~ THEN REPLY #47801 /* ~"Twisted you how?"~ */ GOTO 44
  IF ~~ THEN REPLY #47802 /* ~"I had more questions..."~ */ GOTO 31
  IF ~~ THEN REPLY #47803 /* ~"Too bad. Farewell."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 41.1 43.0
  SAY #47804 /* ~Its voice sounds almost desperate in its attempt not to remember. "You don't want to know. Their minds are alien and pure evil. Bein' put to use by the likes of that..." It shivers in your grasp. "It's not something you'd want to remember. I'll give 'em this much - they're inventive with their tortures."~ */
  IF ~~ THEN REPLY #47805 /* ~"I had more questions..."~ */ GOTO 31
  IF ~~ THEN REPLY #47806 /* ~"I'll bet. Farewell."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Justifier","GLOBAL",0)
~ THEN BEGIN 45 // from:
  SAY #47808 /* ~There's an eye - an Eye, to be more accurate - carved into the sturdy metal of this mace. It flashes blue when it speaks to you, conveying emotion and thought to you. "Greetings. You must be my new master."~ */
  IF ~~ THEN REPLY #47809 /* ~"That is correct. I had some questions for you..."~ */ GOTO 31
END

IF ~  GlobalGT("Justifier","GLOBAL",0)
~ THEN BEGIN 46 // from:
  SAY #47810 /* ~"Hello again. What do you need from me?"~ */
  IF ~~ THEN REPLY #47811 /* ~"I just wanted some questions answered..."~ */ GOTO 31
  IF ~~ THEN REPLY #47812 /* ~"Nothing. Farewell."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END
