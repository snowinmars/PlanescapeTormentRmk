// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBLACKR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBLACKR~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2823 /* ~This man moves with a frightening speed, and he seems only half there. His eyes burn out of his haze, and their madness pierces your heart. "You." His voice is like a blast of cold air. "Declare your allegiance. Do you hold for good or evil?"~ */
  IF ~~ THEN REPLY #3749 /* ~"I believe in aiding those less fortunate than myself. I choose good."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_BR_1","GLOBALGood",1)
~ GOTO 1
  IF ~~ THEN REPLY #3750 /* ~"The idea of good is for the weak. I choose evil."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_BR_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #3751 /* ~"Neither. Extremes are dangerous."~ */ GOTO 6
  IF ~~ THEN REPLY #3752 /* ~"Who are you?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #3363 /* ~"There is a man named Rotten William. He is a dark and deceitful man. He is the leader of the Darkalley Shivs. Find him in this alley and slay him, and you will serve the cause of goodness. Fail, and evil shall rise. Refuse, and I shall slay you."~ */
  IF ~  !Dead("RWill")
~ THEN REPLY #3753 /* ~"All right. I'll do it."~ */ DO ~SetGlobal("BR_RW","GLOBAL",2)
~ GOTO 3
  IF ~  !Dead("RWill")
~ THEN REPLY #3754 /* ~"I won't do it. I don't assassinate people."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3755 /* ~Fight.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3756 /* ~Flee.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #37838 /* ~"Rotten William is already dead. I have killed both him and Krystall."~ */ DO ~AddexperienceParty(1500)
SetGlobal("BR_RW","GLOBAL",3)
~ GOTO 9
  IF ~  Dead("Rwill")
!Dead("Krystall")
~ THEN REPLY #37839 /* ~"Rotten William is already dead."~ */ DO ~AddexperienceParty(1500)
SetGlobal("BR_RW","GLOBAL",3)
~ GOTO 13
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #3728 /* ~"I am Blackrose. I am a hunter and a hunger. I am a scourge. Now. Declare your allegiance."~ */
  IF ~~ THEN REPLY #3757 /* ~"I believe in aiding those less fortunate than myself. I choose good."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_BR_1","GLOBALGood",1)
~ GOTO 1
  IF ~~ THEN REPLY #3758 /* ~"The idea of good is for the weak. I choose evil."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_BR_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #3759 /* ~"Neither. Extremes are dangerous."~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.0 5.0 7.0 7.1 7.2 7.3 13.1 15.1
  SAY #3730 /* ~"I await you. Go. Now."~ */
  IF ~~ THEN REPLY #3760 /* ~"I had some questions, first..."~ */ GOTO 4
  IF ~~ THEN REPLY #3762 /* ~"I'm gone."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #3731 /* ~"There are no answers. There is only action. Go."~ */
  IF ~~ THEN REPLY #3763 /* ~"Fine."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1 2.1
  SAY #3732 /* ~"There is a woman named Krystall. She is the leader of the Razor Angels. She seeks to 'brighten' this alley and turn it into a shining example of what goodness can accomplish. Slay her and you shall be rewarded. Fail, and you shall be hunted to your extinction."~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #3764 /* ~"I'll do it."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",2)
~ GOTO 3
  IF ~  !Dead("Krystall")
~ THEN REPLY #3765 /* ~"I don't think so."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3766 /* ~Fight.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3767 /* ~Flee.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #37841 /* ~"She and Rotten William are already dead."~ */ DO ~AddexperienceParty(1500)
SetGlobal("BR_Krys","GLOBAL",3)
~ GOTO 9
  IF ~  !Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #37843 /* ~"She is already dead."~ */ DO ~AddexperienceParty(1500)
SetGlobal("BR_Krys","GLOBAL",3)
~ GOTO 15
END

IF ~~ THEN BEGIN 6 // from: 0.2 2.2
  SAY #3733 /* ~His eyes blaze, and then soften. His voice sounds like an exhalation. "A neutral. An ally. You know balance. Give me your aid. I eliminate extremes."~ */
  IF ~~ THEN REPLY #3768 /* ~"What can I do?"~ */ GOTO 7
  IF ~~ THEN REPLY #3769 /* ~"I don't think I want to help you."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #3734 /* ~"I am hunting the Razor Angels and the Darkalley Shivs. Choose the leader of one and eliminate them."~ */
  IF ~  !Dead("Krystall")
!Dead("Rwill")
~ THEN REPLY #3770 /* ~"I'll take the Razor Angels."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",2)
~ GOTO 3
  IF ~  !Dead("Krystall")
!Dead("Rwill")
~ THEN REPLY #3771 /* ~"I'll take the Darkalley Shivs."~ */ DO ~SetGlobal("BR_RW","GLOBAL",2)
~ GOTO 3
  IF ~  !Dead("Krystall")
Dead("Rwill")
~ THEN REPLY #3772 /* ~"Rotten William, the leader of the Darkalley Shivs, is already dead. I'll kill Krystall."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",2)
~ GOTO 3
  IF ~  Dead("Krystall")
!Dead("Rwill")
~ THEN REPLY #3773 /* ~"Krystall, the leader of the Razor Angels, is already dead. I'll kill Rotten William."~ */ DO ~SetGlobal("BR_RW","GLOBAL",2)
~ GOTO 3
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #3774 /* ~"They are both already dead."~ */ GOTO 9
  IF ~~ THEN REPLY #3775 /* ~"I don't think I'm interested in helping you."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.5 11.0 13.0 14.0 15.0
  SAY #3735 /* ~His fiery eyes slit, and he whispers, "Then you are an enemy." With a blur of motion, he attacks!~ */
  IF ~~ THEN REPLY #3776 /* ~Fight.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3777 /* ~Flee.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.4 5.4 7.4 11.2 14.2
  SAY #3736 /* ~"We establish our philosophies now. A contest of arms. The winner is the true victor in our struggle for truth."~ */
  IF ~~ THEN REPLY #3778 /* ~"I'll do it, but I cannot die. You will lose, eventually."~ */ DO ~AddexperienceParty(1500)
~ GOTO 10
  IF ~~ THEN REPLY #3779 /* ~"You really are mad, aren't you?"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3780 /* ~Fight.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #3737 /* ~His eyes widen. "You are eternal. Your truth is eternal. I salute you. You honor me. Farewell." ~ */
  IF ~~ THEN REPLY #3781 /* ~"Farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~  Global("BR_RW","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #3738 /* ~"Have you slain Rotten William?"~ */
  IF ~  !Dead("RWill")
~ THEN REPLY #3782 /* ~"Not yet. I'm not going to, either."~ */ GOTO 8
  IF ~  !Dead("Rwill")
~ THEN REPLY #3783 /* ~"No. I'm working on it."~ */ GOTO 12
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #3784 /* ~"Yes."~ */ DO ~SetGlobal("BR_RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 9
  IF ~  Dead("Rwill")
!Dead("Krystall")
~ THEN REPLY #3785 /* ~"Yes."~ */ DO ~SetGlobal("BR_RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.1 14.1
  SAY #3745 /* ~"Work *faster.* Go now. I await you." He crosses his arms.~ */
  IF ~~ THEN REPLY #3786 /* ~"Fine, then."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.5 11.3
  SAY #3746 /* ~"Your next task is to slay Krystall, leader of the Razor Angels. Balance requires her death."~ */
  IF ~~ THEN REPLY #3787 /* ~"I won't do it."~ */ GOTO 8
  IF ~~ THEN REPLY #3788 /* ~"I'll be back."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",2)
~ GOTO 3
END

IF ~  Global("BR_Krys","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #3747 /* ~"Have you slain Krystall?"~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #3790 /* ~"Not yet. I'm not going to, either."~ */ GOTO 8
  IF ~  !Dead("Krystall")
~ THEN REPLY #3791 /* ~"No. I'm working on it."~ */ GOTO 12
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #3792 /* ~"Yes."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 9
  IF ~  !Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #3793 /* ~"Yes."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 5.5 14.3
  SAY #3748 /* ~"Your next task is to slay Rotten William, leader of the Darkalley Shivs. The Balance demands this of you."~ */
  IF ~~ THEN REPLY #3794 /* ~"I won't do it."~ */ GOTO 8
  IF ~~ THEN REPLY #3795 /* ~"I'll be back."~ */ DO ~SetGlobal("BR_RW","GLOBAL",2)
~ GOTO 3
END
