// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKRYS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DKRYS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #1800 /* ~You see a cool, collected woman. Her face is set in hard, determined lines. Her voice is low and firm. "I am Krystall, leader of these Razor Angels. You are in our home. What do you want of me?"~ */
  IF ~~ THEN REPLY #3818 /* ~"Tell me about yourself."~ */ GOTO 1
  IF ~~ THEN REPLY #3819 /* ~"Tell me about the Razor Angels."~ */ GOTO 2
  IF ~~ THEN REPLY #3820 /* ~"Tell me about the Alley."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3821 /* ~"I'm looking for Pharod."~ */ GOTO 4
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3822 /* ~"I'm looking for a journal."~ */ GOTO 5
  IF ~  Global("BR_Krys","GLOBAL",1)
~ THEN REPLY #3823 /* ~"Blackrose wants you dead. I'm here to kill you."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Global("RW","GLOBAL",2)
~ THEN REPLY #3824 /* ~"Rotten William wants you dead. I'm here to kill you."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3825 /* ~"Nothing."~ */ DO ~SetGlobal("Krystall","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.0 1.0
  SAY #2812 /* ~She shrugs. "I'm the leader of the Razor Angels. That's really all you need to know. I created them, they follow my commands. Now. What do you want of me?"~ */
  IF ~~ THEN REPLY #3826 /* ~"Tell me about yourself."~ */ GOTO 1
  IF ~~ THEN REPLY #3827 /* ~"Tell me about the Razor Angels."~ */ GOTO 2
  IF ~~ THEN REPLY #3828 /* ~"Tell me about the Alley."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3829 /* ~"I'm looking for Pharod."~ */ GOTO 4
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3830 /* ~"I'm looking for a journal."~ */ GOTO 5
  IF ~  Global("BR_Krys","GLOBAL",1)
~ THEN REPLY #3831 /* ~"Blackrose wants you dead. I'm here to kill you."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3832 /* ~"Nothing."~ */ DO ~SetGlobal("Krystall","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1
  SAY #2813 /* ~"We came here when bigger gangs took over the Trash Warrens near Ragpicker's Square. We got here right around the same time as the Darkalley Shivs, who've set up kip on the other side of the alley. They're a bunch of murderous thugs," and here she pauses. "We're thugs, but we don't kill if we can help it. We just need to make a living, and given our situation, charging a toll's the best way to do it."~ */
  IF ~~ THEN REPLY #3833 /* ~"Sounds rewarding."~ */ GOTO 7
  IF ~~ THEN REPLY #3834 /* ~"Thanks for the information. Farewell."~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2
  SAY #2814 /* ~"The place caught fire when a barmy spellslinger took it into his head that the place'd look better in ashes. It's been a revolving door of criminals and gangsters ever since."~ */
  IF ~~ THEN REPLY #3835 /* ~"Including you?"~ */ GOTO 8
  IF ~~ THEN REPLY #3836 /* ~"I see. Well, I have to go now. Farewell."~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.3 5.0
  SAY #2815 /* ~She spits. "Wormhair? You can find him near Ragpicker's Square. Ask around there. You're bound to attract someone's notice."~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3837 /* ~"Have you seen a journal anywhere around here?"~ */ GOTO 5
  IF ~~ THEN REPLY #3839 /* ~"Thanks. Farewell."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 0.4 1.4 4.0
  SAY #2817 /* ~"A journal? A book? Here? In the Alley? Ha! Sorry - anything flammable here gets burned for cooking fires."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3841 /* ~"Very well. Do you know where I can find a man named Pharod?"~ */ GOTO 4
  IF ~~ THEN REPLY #3843 /* ~"My thanks, then. Farewell."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 0.7 1.6 2.1 3.1 4.1 5.1 7.0 8.0
  SAY #2818 /* ~"Before you go, I need a favor from you. This slice of Alley just isn't big enough for us and the Darkalley Shivs. We've got heart. They've got hate. Kill off their leader, Rotten William, and you'll get free passage through the Alley from us for the rest of your life. You come through here often enough, that'll save you a lotta jink."~ */
  IF ~~ THEN REPLY #3844 /* ~"Tell me about your gang."~ */ DO ~SetGlobal("Krystall","GLOBAL",1)
~ JOURNAL #31879 /* ~I have been asked by Krystall, the leader of the Razor Angels in the Alley of Dangerous Angles, to eliminate her main rival, a man named Rotten William. In exchange for this, I will receive free passage through the Alley in the future.~ */ GOTO 11
  IF ~~ THEN REPLY #3845 /* ~"Sounds like a bargain. You've got it."~ */ DO ~SetGlobal("Krystall","GLOBAL",2)
~ JOURNAL #31879 /* ~I have been asked by Krystall, the leader of the Razor Angels in the Alley of Dangerous Angles, to eliminate her main rival, a man named Rotten William. In exchange for this, I will receive free passage through the Alley in the future.~ */ GOTO 9
  IF ~~ THEN REPLY #3846 /* ~"I'm not a killer."~ */ DO ~SetGlobal("Krystall","GLOBAL",1)
~ JOURNAL #31879 /* ~I have been asked by Krystall, the leader of the Razor Angels in the Alley of Dangerous Angles, to eliminate her main rival, a man named Rotten William. In exchange for this, I will receive free passage through the Alley in the future.~ */ GOTO 10
  IF ~  Dead("RWill")
~ THEN REPLY #37811 /* ~"He's already dead."~ */ DO ~SetGlobal("Krystall","GLOBAL",3)
SetGlobal("Paid_RA","AR0301",2)
AddexperienceParty(1500)
~ GOTO 16
END

IF ~~ THEN BEGIN 7 // from: 2.0
  SAY #2819 /* ~"No. It's not. Only we've got nothing better going for us. We're Hive dwellers. Even the scant education I got won't get me out of here. No one wants a Hive dweller, so we make sure we're not entirely ignored."~ */
  IF ~~ THEN REPLY #3847 /* ~"Whatever. Farewell."~ */ GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 3.0
  SAY #2820 /* ~"Aye. But I figure that if we can hold on to the Alley and get rid of the Shivs, we'll be set for a time."~ */
  IF ~~ THEN REPLY #3848 /* ~"That may be. Farewell."~ */ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 6.1 10.1 11.0 12.0 14.0
  SAY #2821 /* ~"I look forward to hearing of your success. Come back and tell me when you're done, yes? Good luck."~ */
  IF ~~ THEN REPLY #3851 /* ~"Farewell."~ */ JOURNAL #3853 /* ~I have agreed to kill Rotten William.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY #2822 /* ~"Maybe not. It's a choice between killing a mad dog and his curs, or paying every time you pass through the Alley. The choice is yours."~ */
  IF ~~ THEN REPLY #3854 /* ~"Forget it. I won't do it."~ */ GOTO 12
  IF ~~ THEN REPLY #3855 /* ~"I'll do it, then."~ */ DO ~SetGlobal("Krystall","GLOBAL",2)
~ GOTO 9
END

IF ~~ THEN BEGIN 11 // from: 6.0
  SAY #3369 /* ~"We're itinerants. We've been forced to move time and again. We settled here at the same time as Rotten William and the Darkalley Shivs, and now we're in a fight for our lives. We just charge a simple toll for passage here. They take lives. We're essentially good people. They're evil, led by an evil man."~ */
  IF ~~ THEN REPLY #3856 /* ~"I'll kill him."~ */ DO ~SetGlobal("Krystall","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #3857 /* ~"He sounds like more my type. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #3858 /* ~"I won't do it."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 10.0 11.2
  SAY #3801 /* ~"That won't stop me from asking every time you speak to me. This needs to be done."~ */
  IF ~~ THEN REPLY #3859 /* ~"Then I suppose I had better do it."~ */ DO ~SetGlobal("Krystall","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #3860 /* ~"I'm still not going to do it. Farewell."~ */ EXIT
END

IF ~  GlobalGT("Krystall","GLOBAL",0)
GlobalLT("Krystall","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #3802 /* ~"Have you made any gain in seeking to write Rotten William into the dead-book?"~ */
  IF ~  Global("Krystall","GLOBAL",1)
~ THEN REPLY #7729 /* ~"I told you I wasn't going to do it!"~ */ GOTO 14
  IF ~  !Dead("Rwill")
~ THEN REPLY #9345 /* ~"Not yet."~ */ GOTO 15
  IF ~  Dead("Rwill")
~ THEN REPLY #34415 /* ~"Yes. He's dead. You won't need to worry about him or his gang anymore."~ */ DO ~SetGlobal("Krystall","GLOBAL",3)
SetGlobal("Paid_RA","AR0301",2)
AddexperienceParty(1500)
~ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #3803 /* ~"And I told you I'd keep asking until you agreed to do it."~ */
  IF ~~ THEN REPLY #34416 /* ~"If it will make you stop pestering me, I'll do it."~ */ DO ~SetGlobal("Krystall","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #34417 /* ~"I'm still not going to. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #3804 /* ~"Then why are you talking to me? This is a job that needs doing!" She turns away from you.~ */
  IF ~~ THEN REPLY #34418 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 6.3 13.2
  SAY #3805 /* ~"It's done? Rotten William is gone? You have my thanks, traveler, and you will never again pay a toll for passage through the Alley of Dangerous Angles. I have but one more request for you."~ */
  IF ~~ THEN REPLY #34419 /* ~"Forget it."~ */ GOTO 17
  IF ~~ THEN REPLY #34420 /* ~"What is it?"~ */ GOTO 17
  IF ~~ THEN REPLY #34421 /* ~"What's in it for me?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #3806 /* ~"There is a dangerous killer, a lone wolf, who goes by the name of 'Blackrose'. He is preying on my people. I ask that you stop him."~ */
  IF ~~ THEN REPLY #34422 /* ~"I'll do it."~ */ GOTO 19
  IF ~~ THEN REPLY #34423 /* ~"What's in it for me?"~ */ GOTO 18
  IF ~~ THEN REPLY #34424 /* ~"Not interested. Farewell."~ */ GOTO 20
  IF ~  Dead("BlackR")
~ THEN REPLY #37814 /* ~"He's dead, too."~ */ DO ~SetGlobal("Krystall","GLOBAL",4)
AddexperienceParty(1500)
GivePartyGold(1000)
~ GOTO 22
END

IF ~~ THEN BEGIN 18 // from: 16.2 17.1
  SAY #3807 /* ~"Jink. Coin. Quite a bit of it. Are you interested?"~ */
  IF ~~ THEN REPLY #34425 /* ~"Yes."~ */ GOTO 19
  IF ~~ THEN REPLY #34426 /* ~"No."~ */ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 17.0 18.0
  SAY #3808 /* ~"Then find the barmy Blackrose in this alley and write him into the dead-book. When he's dead, return and I shall reward you."~ */
  IF ~~ THEN REPLY #34427 /* ~"You've got a deal. Farewell."~ */ JOURNAL #34428 /* ~Is there anyone Krystall doesn't want dead? Now I'm to look for a vigilante named Blackrose and eliminate him as well. She has promised me coin and friendship for this task.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.2 18.1
  SAY #3809 /* ~She smiles. "You realize, of course, that I shall continue asking as if you had agreed. Until you return, then, farewell."~ */
  IF ~~ THEN REPLY #34429 /* ~"Great. Farewell."~ */ EXIT
END

IF ~  Global("Krystall","GLOBAL",3)
~ THEN BEGIN 21 // from:
  SAY #3810 /* ~"Have you found Blackrose and eliminated him from the Alley?"~ */
  IF ~  !Dead("BlackR")
~ THEN REPLY #34430 /* ~"Not yet."~ */ GOTO 24
  IF ~  Dead("BlackR")
~ THEN REPLY #34431 /* ~"Yes. You need not worry about him any longer."~ */ DO ~SetGlobal("Krystall","GLOBAL",4)
AddexperienceParty(1500)
GivePartyGold(1000)
~ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 17.3 21.1
  SAY #3812 /* ~She hands you a large, patched purse. "You have my thanks, and the thanks of the Razor Angels. We part friends, and shall remember you."~ */
  IF ~~ THEN REPLY #34432 /* ~"Sure. Farewell."~ */ JOURNAL #34433 /* ~I received a pouch of coin for my efforts in eliminating Blackrose. Quite a hefty sum, too.~ */ EXIT
END

IF ~  Global("Krystall","GLOBAL",4)
~ THEN BEGIN 23 // from:
  SAY #3814 /* ~"Hail, friend. You have my thanks. Treat the Alley - humble as it may be - as your home. Farewell."~ */
  IF ~~ THEN REPLY #34434 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.0
  SAY #3816 /* ~"Please try. He is decimating my people."~ */
  IF ~~ THEN REPLY #34435 /* ~"I'll keep looking. Farewell."~ */ EXIT
END
