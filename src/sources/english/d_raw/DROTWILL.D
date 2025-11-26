// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DROTWILL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DROTWILL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2824 /* ~You see a hard-edged man. His face is sharp and confident, yet somehow seems diffused. His eyes are clear and cruel. He seems both indolent and poised, and he holds a knife in his callused hands. "So. Another visitor for Rotten William. Speak yer mind, traveler, make it good, and perhaps we'll let yeh go."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3371 /* ~"I'm looking for Pharod."~ */ GOTO 1
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3648 /* ~"I'm looking for a journal."~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3649 /* ~"I'm passing through."~ */ GOTO 13
  IF ~~ THEN REPLY #3650 /* ~"I don't want any trouble."~ */ GOTO 16
  IF ~  Global("BR_RW","GLOBAL",1)
!Dead("BlackR")
~ THEN REPLY #3651 /* ~"Blackrose wants you dead."~ */ GOTO 17
  IF ~  Global("Krystall","GLOBAL",2)
!Dead("Krystall")
~ THEN REPLY #3652 /* ~"Krystall wants you dead."~ */ GOTO 17
  IF ~~ THEN REPLY #3653 /* ~"It's not any of your business."~ */ GOTO 20
END

IF ~~ THEN BEGIN 1 // from: 0.0 12.0 20.0
  SAY #3654 /* ~"Yeh want Pharod, aye? Well, me pretty, for a price I can tell yeh where to find him."~ */
  IF ~~ THEN REPLY #3718 /* ~"How much?"~ */ GOTO 2
  IF ~~ THEN REPLY #3719 /* ~"I'm not interested, I'm afraid."~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #3661 /* ~He sizes you up. "A mere five coppers. Fair enough for someone seems as desperate as yeh do."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #3656 /* ~"All right, here. Where is he?"~ */ DO ~TakePartyGold(5)
~ GOTO 3
  IF ~~ THEN REPLY #3657 /* ~"I'm not interested."~ */ GOTO 4
  IF ~~ THEN REPLY #3658 /* ~"I don't have that much."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #3668 /* ~"Yeh can find him near Ragpicker's Square. Look for him and his Collectors and yeh should have no problem in dealin' with him."~ */
  IF ~~ THEN REPLY #3659 /* ~"People have already told me that!"~ */ GOTO 5
  IF ~~ THEN REPLY #3660 /* ~"Thanks. Farewell."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 2.2 3.1
  SAY #3672 /* ~"Aye, well then, mayhap there's something yeh will be interested in. There's a berk by the name of Krystall who runs those weak sisters called the Razor Angels. Off her and we'll talk about yer reward."~ */
  IF ~~ THEN REPLY #3662 /* ~"What's in it for me?"~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 6
  IF ~  !Dead("Krystall")
~ THEN REPLY #3663 /* ~"I'll do it."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ GOTO 7
  IF ~  !Dead("Krystall")
~ THEN REPLY #3664 /* ~"I won't do it. I'm no assassin."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  Dead("Krystall")
~ THEN REPLY #3665 /* ~"I'd like to think about it first."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  Dead("Krystall")
~ THEN REPLY #37831 /* ~"She's already dead."~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #3676 /* ~"Aye, well, yeh get what yeh pay for. So... what's yer business here?"~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3666 /* ~"I'm looking for a journal."~ */ GOTO 12
  IF ~~ THEN REPLY #3667 /* ~"I'm passing through."~ */ GOTO 13
  IF ~~ THEN REPLY #3669 /* ~"I don't want any trouble."~ */ GOTO 16
  IF ~  Global("BR_RW","GLOBAL",1)
!Dead("BlackR")
~ THEN REPLY #3670 /* ~"Blackrose wants you dead."~ */ GOTO 17
  IF ~  Global("Krystall","GLOBAL",2)
!Dead("Krystall")
~ THEN REPLY #3671 /* ~"Krystall wants you dead."~ */ GOTO 17
  IF ~~ THEN REPLY #3673 /* ~"It's not any of your business."~ */ GOTO 20
END

IF ~~ THEN BEGIN 6 // from: 4.0 14.0 15.0
  SAY #3677 /* ~"Didn't I just tell yeh we'd talk about it when yeh were done with the slaughter? I meant what I said, berk. Now will yeh do it or won't yeh?"~ */
  IF ~~ THEN REPLY #3674 /* ~"I just want to know what's in it for me."~ */ GOTO 9
  IF ~  !Dead("Krystall")
~ THEN REPLY #3690 /* ~"No. I'm not an assassin."~ */ GOTO 8
  IF ~  !Dead("Krystall")
~ THEN REPLY #3692 /* ~"Sure. I'll do it."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ GOTO 7
  IF ~  Dead("Krystall")
~ THEN REPLY #37832 /* ~"She's already dead."~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 7 // from: 4.1 6.2 8.2 9.1 10.1 14.1 15.1
  SAY #3678 /* ~"Brilliant! Come back when ye're done then, and be sure ye're done. I don't want no whining about how yeh couldn't. We've made a deal and we'll stick with it."~ */
  IF ~~ THEN REPLY #3693 /* ~"Don't worry about it."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 4.3 6.1 14.2 14.3 15.2 15.3
  SAY #3679 /* ~"I urge yeh to reconsider this position. Don't be hasty, aye? What d'yeh say to two hundred coins?"~ */
  IF ~~ THEN REPLY #3694 /* ~"How about four hundred?"~ */ GOTO 10
  IF ~  !Dead("Krystall")
~ THEN REPLY #3695 /* ~"No. I won't do it."~ */ GOTO 11
  IF ~  !Dead("Krystall")
~ THEN REPLY #3696 /* ~"I'll do it."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ JOURNAL #31876 /* ~Rotten William has offered 200 coins to dispose of Krystall, a rival gang leader in the Alley of Dangerous Angles. I have accepted.~ */ GOTO 7
  IF ~  Dead("Krystall")
~ THEN REPLY #37833 /* ~"She's already dead."~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 9 // from: 6.0
  SAY #3680 /* ~"Yeh'll get what yeh deserve, berk. Let's call it two hundred coins, aye? D'we have a deal?"~ */
  IF ~~ THEN REPLY #3681 /* ~"How about more than that?"~ */ GOTO 10
  IF ~  !Dead("Krystall")
~ THEN REPLY #3682 /* ~"Yes, we do."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ JOURNAL #31876 /* ~Rotten William has offered 200 coins to dispose of Krystall, a rival gang leader in the Alley of Dangerous Angles. I have accepted.~ */ GOTO 7
  IF ~  !Dead("Krystall")
~ THEN REPLY #3697 /* ~"No. I won't do it."~ */ GOTO 11
  IF ~  Dead("Krystall")
~ THEN REPLY #37834 /* ~"She's already dead."~ */ DO ~SetGlobal("RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #3683 /* ~"Three hundred, then. My final offer."~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #3699 /* ~"No. I won't do it."~ */ GOTO 11
  IF ~  !Dead("Krystall")
~ THEN REPLY #3700 /* ~"It's a deal. Consider her dead."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ JOURNAL #31877 /* ~Rotten William has offered 300 coins to dispose of Krystall, a rival gang leader in the Alley of Dangerous Angles. I have accepted.~ */ GOTO 7
  IF ~  Dead("Krystall")
~ THEN REPLY #37835 /* ~"She's already dead."~ */ DO ~SetGlobal("RW","GLOBAL",4)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.2 10.0
  SAY #3684 /* ~"If that's the way yeh want it. Pity yeh couldn't see it the right way 'round." He raises his voice. "Shivs! Get rid of this offal!"~ */
  IF ~~ THEN REPLY #3701 /* ~Fight.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3702 /* ~Flee.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.1 5.0 20.1
  SAY #3685 /* ~"A journal, aye? Not a diary? Not a ledger? A journal specifically?" He pauses for a moment, and then as you are about to reply, he says, "Like as not it went to warm our fires if it came through here. Ain't seen it."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3703 /* ~"I'm looking for Pharod."~ */ GOTO 1
  IF ~~ THEN REPLY #3704 /* ~"I'm passing through."~ */ GOTO 13
  IF ~~ THEN REPLY #3705 /* ~"I don't want any trouble."~ */ GOTO 16
  IF ~  Global("BR_RW","GLOBAL",1)
!Dead("BlackR")
~ THEN REPLY #3706 /* ~"Blackrose wants you dead."~ */ GOTO 17
  IF ~  Global("Krystall","GLOBAL",2)
!Dead("Krystall")
~ THEN REPLY #3707 /* ~"Krystall wants you dead."~ */ GOTO 17
  IF ~~ THEN REPLY #3708 /* ~"It's not any of your business."~ */ GOTO 20
END

IF ~~ THEN BEGIN 13 // from: 0.2 5.1 12.1
  SAY #3686 /* ~"Just passing through, aye? That's a pity. No one passes through here without paying a price of some sort."~ */
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #3709 /* ~"I already paid that price."~ */ GOTO 14
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #3710 /* ~Bluff: "I already paid that fee."~ */ GOTO 14
  IF ~~ THEN REPLY #3711 /* ~"What price?"~ */ GOTO 15
  IF ~~ THEN REPLY #3712 /* ~"I'd like to see you exact it."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1 13.3
  SAY #3687 /* ~He laughs and holds up a hand. "Not so fast, friend. That ain't the price I'm speaking of. This is something else entirely. See, there's a berk running a rival gang on the other side of this alley, and I'd like yeh to write her into the dead-book... in blood. Her name's Krystall."~ */
  IF ~~ THEN REPLY #3713 /* ~"What's in it for me?"~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 6
  IF ~  !Dead("Krystall")
~ THEN REPLY #3714 /* ~"I'll do it."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ GOTO 7
  IF ~  !Dead("Krystall")
~ THEN REPLY #3715 /* ~"I won't do it. I'm no assassin."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  !Dead("Krystall")
~ THEN REPLY #3716 /* ~"I'd like to think about it first."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  Dead("Krystall")
~ THEN REPLY #38114 /* ~"She's already dead."~ */ DO ~SetGlobal("RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 15 // from: 13.2 16.0
  SAY #3688 /* ~"It's a small blood fee. Good thing for yeh is that it ain't yer blood. It's the blood of another - a berk by the name of Krystall who's got the temerity to try holding a piece of my territory from me. I want yeh to find her and make her lost - kill her."~ */
  IF ~~ THEN REPLY #3717 /* ~"What's in it for me?"~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #3720 /* ~"I'll do it."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #3721 /* ~"I won't do it. I'm no assassin."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #3722 /* ~"I'd like to think about it first."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  Dead("Krystall")
~ THEN REPLY #41720 /* ~"She's already dead."~ */ DO ~SetGlobal("RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 16 // from: 0.3 5.2 12.2 20.2
  SAY #3698 /* ~"Aye, then it's a good thing for yeh that I mean yeh no harm. I just need a little favor done for me. Hear me out, will yeh?"~ */
  IF ~~ THEN REPLY #3723 /* ~"What is it?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 17 // from: 0.4 0.5 5.3 5.4 12.3 12.4 20.3 20.4
  SAY #3725 /* ~"Aye, then. D'yeh mean to carry out yer commission?"~ */
  IF ~~ THEN REPLY #3724 /* ~"Yes."~ */ GOTO 18
  IF ~~ THEN REPLY #3726 /* ~"I'm not sure."~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0 22.1
  SAY #34367 /* ~"Then let's not waste time, aye? My Shivs'll defend me."~ */
  IF ~~ THEN REPLY #3727 /* ~Fight.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11670 /* ~Flee.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #34368 /* ~"Yeh should always be sure, lad. I'm sure ye're about to die." He makes a small motion with his hand.~ */
  IF ~~ THEN REPLY #34384 /* ~"What do you mean?"~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 0.6 5.5 12.5
  SAY #34369 /* ~"Be that as yeh may think, all that happens here is my business. I ask again... what do yeh want here?"~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #34385 /* ~"I'm looking for Pharod."~ */ GOTO 1
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #34386 /* ~"I'm looking for a journal."~ */ GOTO 12
  IF ~~ THEN REPLY #34388 /* ~"I don't want any trouble."~ */ GOTO 16
  IF ~  Global("BR_RW","GLOBAL",1)
!Dead("BlackR")
~ THEN REPLY #34389 /* ~"Blackrose wants you dead."~ */ GOTO 17
  IF ~  Global("Krystall","GLOBAL",2)
!Dead("Krystall")
~ THEN REPLY #34390 /* ~"Krystall wants you dead."~ */ GOTO 17
  IF ~~ THEN REPLY #34391 /* ~"I said it's not any of your business."~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.5
  SAY #34370 /* ~"A pity yeh should say that. Pity more that yeh'll be dead." He waves his arm as a signal and draws his knife.~ */
  IF ~~ THEN REPLY #34392 /* ~Fight.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34393 /* ~Flee.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  Global("RW","GLOBAL",3)
~ THEN BEGIN 22 // from:
  SAY #34371 /* ~"Have yeh found the vigilante Blackrose yet? Have yeh put him down like we agreed?"~ */
  IF ~~ THEN REPLY #34394 /* ~"Not yet."~ */ GOTO 23
  IF ~  Global("BR_RW","GLOBAL",2)
!Dead("BlackR")
~ THEN REPLY #34395 /* ~"I've found him, but he convinced me to kill you instead."~ */ GOTO 18
  IF ~  Dead("BlackR")
~ THEN REPLY #34396 /* ~"He's dead. I'd like my reward now."~ */ DO ~AddexperienceParty(1500)
~ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #34372 /* ~"Not yet? What are yeh, incompetent? Go find him and come back when yeh've finally done the job!" He turns away in exasperation.~ */
  IF ~~ THEN REPLY #34397 /* ~"I had some questions, first..."~ */ EXIT
  IF ~~ THEN REPLY #34398 /* ~"All right, then."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.2 27.2
  SAY #34373 /* ~Rotten William's eyes light up. "Yeh got 'em all, aye? I got yer reward then. Let me just dig it out..." His hand whips out his dagger and he thrusts toward your belly.~ */
  IF ~~ THEN REPLY #34399 /* ~Fight.~ */ DO ~SetGlobal("RW","GLOBAL",4)
SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34400 /* ~Flee.~ */ DO ~SetGlobal("RW","GLOBAL",4)
SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  Global("RW","GLOBAL",4)
~ THEN BEGIN 25 // from:
  SAY #34374 /* ~His eyes glare daggers at you. "Did yeh kill the miserable bitch like yeh were told to do, or have yeh come to brag further of yer failure?"~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #34401 /* ~"Not yet."~ */ GOTO 26
  IF ~  Dead("Krystall")
~ THEN REPLY #34402 /* ~"She's dead."~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #34375 /* ~He shakes his head. "Even these sods who call themselves my mates can do something they say they're going to do. Ye're just worthless, is what it is. We'll be doing the city a favor by getting rid of yeh." He draws his knife.~ */
  IF ~~ THEN REPLY #34403 /* ~Fight.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34404 /* ~Flee.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 4.4 6.3 8.3 9.3 10.2 14.4 15.4 25.1 31.1
  SAY #34376 /* ~"Aye, yeh've done yer job, yeh have. I just need yeh to get rid of this blasted killer who keeps getting my men lost. I'll even double yer fee. Sound good to yeh? Yeh don't want to turn this offer down, yeh don't."~ */
  IF ~~ THEN REPLY #34405 /* ~"I'm afraid I'm going to have to turn it down."~ */ GOTO 28
  IF ~  !Dead("BlackR")
~ THEN REPLY #34406 /* ~"I'll do it."~ */ GOTO 30
  IF ~  Dead("BlackR")
~ THEN REPLY #37836 /* ~"He's already dead. I'd like my reward now."~ */ DO ~AddexperienceParty(1500)
~ GOTO 24
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #34379 /* ~"Ye're sure about this? Yeh don't want the job?"~ */
  IF ~~ THEN REPLY #34407 /* ~"No, I don't."~ */ GOTO 29
  IF ~~ THEN REPLY #34408 /* ~"Come to think of it, double the money sounds nice. I'll do it."~ */ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #34380 /* ~"That's a pity, that is. Ah, well. Lads, it's time to burn this garbage." He draws his knife slowly, and walks toward you...~ */
  IF ~~ THEN REPLY #34409 /* ~Fight.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34410 /* ~Flee.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1 28.1
  SAY #34381 /* ~"Good. Good. Yeh'll find him wandering around the alley. I think he sticks to the shadows."~ */
  IF ~~ THEN REPLY #34411 /* ~"I'll find him."~ */ JOURNAL #31878 /* ~Rotten William has asked me to kill the killer Blackrose, who is apparently stalking around the Alley of Dangerous Angles.~ */ EXIT
END

IF ~  Global("RW","GLOBAL",2)
~ THEN BEGIN 31 // from:
  SAY #34382 /* ~"Have yeh gotten rid of that miserable bitch Krystall yet?"~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #34412 /* ~"Not yet."~ */ DO ~SetGlobal("RW","GLOBAL",4)
~ GOTO 32
  IF ~  Dead("Krystall")
~ THEN REPLY #34413 /* ~"She's dead."~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #34383 /* ~He speaks through gritted teeth, enunciating each word clearly. "Don't... come... back... until... she... is... dead. Do... yeh... understand?" He turns away. "I don't want to see neither hide nor hair of yeh until she's gone."~ */
  IF ~~ THEN REPLY #34414 /* ~"Very well, then. Farewell."~ */ EXIT
END
