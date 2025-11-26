// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFIGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~GFIGRD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 21 even though they appear after this state */
~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5691 /* ~"Comrades! To me! The intruder's here! Over here!"~ */
  IF ~~ THEN REPLY #5692 /* ~Fight.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 21 even though they appear after this state */
~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5693 /* ~"Sir, you've been asked to leave. Please do so. Now."~ */
  IF ~~ THEN REPLY #5694 /* ~Done.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 21 even though they appear after this state */
~  CreatureInArea("AR0500")
~ THEN BEGIN 2 // from:
  SAY #5695 /* ~"Please keep the courtyard clear, sir. Either inside or outside."~ */
  IF ~~ THEN REPLY #66282 /* ~"All right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #5701 /* ~NULL MODE~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #5704 /* ~NULL MODE~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY #5708 /* ~NULL MODE~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 21 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 6 // from:
  SAY #5712 /* ~"Good day, sir. May I help you with something?"~ */
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5714 /* ~"Well, yes. I didn't know who to talk to about this, but I guess you're the one. Bedai-Lihn asked me to kill Sandoz. How about that?"~ */ GOTO 13
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5715 /* ~"I'm looking for the murderer of the smith. Did you see anything that night?"~ */ GOTO 12
  IF ~~ THEN REPLY #5716 /* ~"Where's the clerk's office?"~ */ GOTO 8
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5717 /* ~"Where can I find a high-up here?"~ */ GOTO 10
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5718 /* ~"Where can I find a high-up here?"~ */ GOTO 9
  IF ~~ THEN REPLY #5719 /* ~"No, thank you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 8.4 9.0 10.1 14.1 16.0 19.0 20.0
  SAY #5720 /* ~"I'm afraid that's a secret, sir. Even from our valued faction members. Unless you're involved in the project itself, or unless you receive authorization from one of the high-ups, we can't allow you in."~ */
  IF ~~ THEN REPLY #5721 /* ~"Very well. Can you tell me where to find the clerk's office?"~ */ GOTO 8
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5722 /* ~"Fine. Where can I find the high-ups?"~ */ GOTO 10
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5723 /* ~"Fine. Where can I find the high-ups?"~ */ GOTO 9
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5724 /* ~"I'm looking for the murderer of the smith. Did you see anything that night?"~ */ GOTO 12
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5725 /* ~"Speaking of the high-ups, Bedai-Lihn asked me to kill Sandoz. How about that?"~ */ GOTO 13
  IF ~~ THEN REPLY #5726 /* ~"How about I beat it out of you?"~ */ GOTO 11
  IF ~~ THEN REPLY #5727 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.2 7.0 9.1 10.0 16.3 19.2 20.2
  SAY #5759 /* ~"Just south of the main foundry, sir, you'll find an office with a desk in it. That's the clerk's office."~ */
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5760 /* ~"Thank you. Where can I find the high-ups?"~ */ GOTO 9
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5761 /* ~"Thank you. Where can I find the high-ups?"~ */ GOTO 10
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5762 /* ~"I'm looking for the murderer of the smith. Did you see anything that night?"~ */ GOTO 12
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5763 /* ~"I didn't know who tell this to, but... Bedai-Lihn asked me to kill Sandoz."~ */ GOTO 13
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5764 /* ~"What's behind those guarded doors?"~ */ GOTO 7
  IF ~~ THEN REPLY #64516 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.4 7.2 8.0 16.5 19.4 20.4
  SAY #5765 /* ~"What with the death of Sandoz, Keldor's pretty much the only one who can give you any help. You can find him in the main meeting hall - out the door on the right side of the main foundry. You shouldn't be able to miss him."~ */
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5766 /* ~"Fine. What's behind those guarded doors?"~ */ GOTO 7
  IF ~~ THEN REPLY #5767 /* ~"Can you tell me how to find the clerk's office?"~ */ GOTO 8
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5768 /* ~"I'm looking for the murderer of the smith. Did you see anything that night?"~ */ GOTO 12
  IF ~~ THEN REPLY #5769 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.3 7.1 8.1 16.4 19.3 20.3
  SAY #5770 /* ~"Either Sandoz or Keldor should be able to aid you in this matter. Keldor's in the main meeting hall, just through the door on the right side of the main foundry. Sandoz can usually be found in the rooms to the rear of the Hall."~ */
  IF ~~ THEN REPLY #5771 /* ~"Thanks. How do I find the clerk's office?"~ */ GOTO 8
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5772 /* ~"What's behind those guarded doors?"~ */ GOTO 7
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5773 /* ~"I'm looking for the murderer of the smith. Did you see anything that night?"~ */ GOTO 12
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5774 /* ~"Speaking of Sandoz, Bedai-Lihn asked me to kill him. How about that?"~ */ GOTO 13
  IF ~~ THEN REPLY #5775 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.5
  SAY #5776 /* ~"I would love to see you try it. Sir."~ */
  IF ~~ THEN REPLY #5777 /* ~Attack.~ */ DO ~Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #5778 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1 7.3 8.2 9.2 10.2 16.2 18.0
  SAY #5779 /* ~"No, sir. We had left the room for the night."~ */
  IF ~~ THEN REPLY #5780 /* ~"Isn't that unusual?"~ */ GOTO 14
  IF ~~ THEN REPLY #5781 /* ~"Under whose orders?"~ */ GOTO 15
  IF ~~ THEN REPLY #5782 /* ~"I had other, non-murder-related questions for you."~ */ GOTO 16
  IF ~~ THEN REPLY #5783 /* ~"I see. Interesting. Thank you for your time."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.0 7.4 8.3 10.3 16.1 19.1 20.1
  SAY #5784 /* ~"WHAT? Are you serious? Go talk to Keldor about this. In the meantime, we'll take care of the engineer. Thank you."~ */
  IF ~~ THEN REPLY #5785 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 15.1 17.1
  SAY #5786 /* ~"Yes, sir, it is unusual. Ordinarily, they keep us here day and night to make sure the project is kept safe."~ */
  IF ~~ THEN REPLY #5787 /* ~"Who has the authority to dismiss you like that?"~ */ GOTO 15
  IF ~~ THEN REPLY #5788 /* ~"What can you tell me about the project?"~ */ GOTO 7
  IF ~~ THEN REPLY #5789 /* ~"So what you're saying is that you didn't see anything."~ */ GOTO 17
  IF ~~ THEN REPLY #5790 /* ~"Interesting. Thank you."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.1 14.0
  SAY #5791 /* ~"The only people who have that authority are Thildon and Bedai-Lihn. I suppose the factors, or someone attached to them, could have given the order, but they aren't really likely to have done it. I don't know who the order came from, and I don't know why anyone would want to give it."~ */
  IF ~~ THEN REPLY #5792 /* ~"That's less than helpful, but it's a start. Answer me some other questions, instead."~ */ GOTO 16
  IF ~~ THEN REPLY #5793 /* ~"And it's not unusual that you would have received this order?"~ */ GOTO 14
  IF ~~ THEN REPLY #5794 /* ~"And you didn't see anything?"~ */ GOTO 17
  IF ~~ THEN REPLY #5795 /* ~"That's... 'illuminating.' Good day."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.2 15.0 17.0 18.1
  SAY #5796 /* ~"More questions?"~ */
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5797 /* ~"What's behind those guarded doors?"~ */ GOTO 7
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5798 /* ~"Well, yes. I didn't know who to talk to about this, but I guess you're the one. Bedai-Lihn asked me to kill Sandoz. How about that?"~ */ GOTO 13
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5799 /* ~"I'm looking for the murderer of the smith. Did you see anything that night?"~ */ GOTO 12
  IF ~~ THEN REPLY #5800 /* ~"Where's the clerk's office?"~ */ GOTO 8
  IF ~  !Dead("Sandoz")
~ THEN REPLY #5801 /* ~"Where can I find a high-up here?"~ */ GOTO 10
  IF ~  Dead("Sandoz")
~ THEN REPLY #5802 /* ~"Where can I find a high-up here?"~ */ GOTO 9
  IF ~~ THEN REPLY #5803 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.2 15.2
  SAY #5804 /* ~"That's exactly right, sir. I saw nothing."~ */
  IF ~~ THEN REPLY #5805 /* ~"Hm. Answer me some other questions, then."~ */ GOTO 16
  IF ~~ THEN REPLY #5806 /* ~"You didn't think this order was unusual?"~ */ GOTO 14
  IF ~~ THEN REPLY #5807 /* ~"That's... 'illuminating.' Good day."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 21 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",3)
~ THEN BEGIN 18 // from:
  SAY #5808 /* ~"I understand we're supposed to help you in any way we can regarding this murder, but I have to warn you that my help isn't going to be that valuable."~ */
  IF ~~ THEN REPLY #5809 /* ~"Why not? Weren't you here?"~ */ GOTO 12
  IF ~~ THEN REPLY #5810 /* ~"Right. Well, I had other questions anyway."~ */ GOTO 16
  IF ~~ THEN REPLY #5811 /* ~"Oh. Forget it, then."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 21 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 19 // from:
  SAY #5812 /* ~You see a competent, somewhat bored-looking guard. "Greeting, sir. May I be of assistance?"~ */
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5813 /* ~"What's behind those guarded doors?"~ */ GOTO 7
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5814 /* ~"Well, yes. I didn't know who to talk to about this, but I guess you're the one. Bedai-Lihn asked me to kill Sandoz. How about that?"~ */ GOTO 13
  IF ~~ THEN REPLY #5815 /* ~"Where's the clerk's office?"~ */ GOTO 8
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5816 /* ~"Where can I find a high-up here?"~ */ GOTO 10
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5817 /* ~"Where can I find a high-up here?"~ */ GOTO 9
  IF ~~ THEN REPLY #5818 /* ~"Forget it. Farewell."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 21 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 20 // from:
  SAY #5819 /* ~"Greeting, sir. May I be of assistance?"~ */
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5820 /* ~"What's behind those guarded doors?"~ */ GOTO 7
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5821 /* ~"Well, yes. I didn't know who to talk to about this, but I guess you're the one. Bedai-Lihn asked me to kill Sandoz. How about that?"~ */ GOTO 13
  IF ~~ THEN REPLY #5822 /* ~"Where's the clerk's office?"~ */ GOTO 8
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5823 /* ~"Where can I find a high-up here?"~ */ GOTO 10
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5824 /* ~"Where can I find a high-up here?"~ */ GOTO 9
  IF ~~ THEN REPLY #5825 /* ~"Forget it. Farewell."~ */ EXIT
END

IF WEIGHT #0 ~  CreatureInArea("AR0900")
~ THEN BEGIN 21 // from:
  SAY #67221 /* ~The guard glares at you. "Out of the way. We've a job that needs doing."~ */
  IF ~~ THEN REPLY #67222 /* ~"Farewell."~ */ EXIT
END
