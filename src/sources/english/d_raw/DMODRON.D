// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMODRON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMODRON~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #2980 /* ~You see a cube with two arms, two legs, and two small wings sprouting from its sides. On the front of the cube is an animated face. As you approach, the creature focuses its eyes upon you.~ */
  IF ~~ THEN REPLY #2981 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #44710 /* ~Ignore the creature.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #44711 /* ~"Greetings." The creature speaks with a monotone, sexless voice.~ */
  IF ~~ THEN REPLY #44712 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #44713 /* ~"Never mind, I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.1 6.0 6.1 7.2 8.1 9.1 10.1 11.1 12.0 13.1 14.1
  SAY #44714 /* ~The creature continues to look at you blankly. "State your question."~ */
  IF ~~ THEN REPLY #44715 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #44716 /* ~"What are you?"~ */ GOTO 7
  IF ~~ THEN REPLY #44717 /* ~"What is this place?"~ */ GOTO 10
  IF ~~ THEN REPLY #44718 /* ~"What are you doing here?"~ */ GOTO 13
  IF ~~ THEN REPLY #44719 /* ~"Never mind, I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #44720 /* ~"We are modron."~ */
  IF ~~ THEN REPLY #44721 /* ~"Your name is Modron?"~ */ GOTO 4
  IF ~~ THEN REPLY #44722 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #44723 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #44724 /* ~"We are modron. We do not have a name. We are modron. All that you see here are modron. We are one."~ */
  IF ~~ THEN REPLY #44725 /* ~"All right. You are all modrons, but what is *this* modron's name? The one I am talking to."~ */ GOTO 5
  IF ~~ THEN REPLY #44726 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #44727 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #44728 /* ~The modron begins to emit sporadic knocking sounds. Its face takes on a pained expression as it continues to stare at you. "We... I..." It looks away from you and the knocking sound fades. "We are modron. We have no identity other than the whole that is modron. We have no name."~ */
  IF ~~ THEN REPLY #44729 /* ~"Then how do you tell one modron from another?"~ */ GOTO 6
  IF ~~ THEN REPLY #44730 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #44731 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #44732 /* ~There is a pause as the modron considers your question. "We know. We are modron. We are a part of the whole. Just as you recognize the hand that is part of the arm, we recognize each part of the whole."~ */
  IF ~~ THEN REPLY #44733 /* ~"I see. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #44734 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #44735 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY #44736 /* ~"We are modron, we are quadrone."~ */
  IF ~~ THEN REPLY #44737 /* ~"What is a modron?"~ */ GOTO 8
  IF ~~ THEN REPLY #44738 /* ~"What is a quadrone?"~ */ GOTO 9
  IF ~~ THEN REPLY #44739 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #44740 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.0
  SAY #44741 /* ~"We are modron. Our race is identified as such."~ */
  IF ~~ THEN REPLY #44742 /* ~"Then what is a quadrone?"~ */ GOTO 9
  IF ~~ THEN REPLY #44743 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #44744 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #44745 /* ~"Within our race, we are identified as type quadrone."~ */
  IF ~~ THEN REPLY #44746 /* ~"Then what is a modron?"~ */ GOTO 8
  IF ~~ THEN REPLY #44747 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #44748 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #44749 /* ~"Rubikon dungeon construct."~ */
  IF ~~ THEN REPLY #44750 /* ~"What exactly is that?"~ */ GOTO 11
  IF ~~ THEN REPLY #44751 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #44752 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 14.0
  SAY #44753 /* ~The modron frowns at you then glances about the room. "We should know... We are modron. We are part of the whole... We... Information not available. Address your query to the engineer."~ */
  IF ~~ THEN REPLY #44754 /* ~"Where do I find the engineer?"~ */ GOTO 12
  IF ~~ THEN REPLY #44755 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #44756 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #44757 /* ~The modron glances about. "We do not know. Information not available... We are confused..."~ */
  IF ~~ THEN REPLY #44758 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #44759 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.3
  SAY #44760 /* ~"Awaiting instructions."~ */
  IF ~~ THEN REPLY #44761 /* ~"Instructions for what?"~ */ GOTO 14
  IF ~~ THEN REPLY #44762 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #44763 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #44764 /* ~The modron gives you a blank look. "Instructions for what tasks need to be performed."~ */
  IF ~~ THEN REPLY #44765 /* ~"What tasks? Just what is it that you do here?"~ */ GOTO 11
  IF ~~ THEN REPLY #44766 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #44767 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 15 // from:
  SAY #44768 /* ~You see a cube with two arms, two legs, and two small wings sprouting from its sides. On the front of the cube is an animated face. As you approach, the creature focuses its eyes upon you.~ */
  IF ~~ THEN REPLY #44769 /* ~"Greetings."~ */ GOTO 16
  IF ~~ THEN REPLY #44770 /* ~Ignore the creature.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #44771 /* ~"Greetings." The creature speaks with a monotone, sexless voice.~ */
  IF ~~ THEN REPLY #44772 /* ~"I have some questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #44773 /* ~"Never mind, I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 18.1 19.1 20.0 21.1 22.0 23.2 24.1 25.1 26.0 27.1 28.0
  SAY #44774 /* ~The creature continues to look at you blankly. "State your question."~ */
  IF ~~ THEN REPLY #44775 /* ~"Who are you?"~ */ GOTO 18
  IF ~~ THEN REPLY #44776 /* ~"What are you?"~ */ GOTO 21
  IF ~  Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #44777 /* ~"What is this place?"~ */ GOTO 23
  IF ~  !Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #44778 /* ~"What is this place?"~ */ GOTO 26
  IF ~~ THEN REPLY #44779 /* ~"What are you doing here?"~ */ GOTO 27
  IF ~~ THEN REPLY #44780 /* ~"Never mind, I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #44781 /* ~The creature gazes at you for some time before answering. "Uncertain... Confusion exists..." ~ */
  IF ~~ THEN REPLY #44782 /* ~"What do you mean? Don't you know who you are?"~ */ GOTO 19
  IF ~~ THEN REPLY #44783 /* ~"I have some questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #44784 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #44785 /* ~"No... Uncertainty exists... at times." ~ */
  IF ~~ THEN REPLY #44786 /* ~"I don't remember who I am either."~ */ GOTO 20
  IF ~~ THEN REPLY #44787 /* ~"I have some questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #44788 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #44789 /* ~"I sympathize with you..." It reaches out and touches your shoulder gently. After a moment it takes the hand away.~ */
  IF ~~ THEN REPLY #44790 /* ~"I have some questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #44791 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.1
  SAY #44792 /* ~"Our race is known as modron. We are from the plane of law, Mechanus."~ */
  IF ~~ THEN REPLY #44793 /* ~"What can you tell me about Mechanus?"~ */ GOTO 22
  IF ~~ THEN REPLY #44794 /* ~"I have some questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #44795 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #44796 /* ~"A place of laws... many laws. Very structured..." Its voice fades to silence.~ */
  IF ~~ THEN REPLY #44797 /* ~"I have some questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #44798 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.2
  SAY #44799 /* ~It glances about. "A dungeon simulator. Doesn't work though. It broke." It sighs.~ */
  IF ~~ THEN REPLY #44800 /* ~"What happened?"~ */ GOTO 24
  IF ~~ THEN REPLY #44801 /* ~"What's a dungeon simulator?"~ */ GOTO 25
  IF ~~ THEN REPLY #44802 /* ~"I have some questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #44803 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 25.0
  SAY #44804 /* ~"Uncertain. It stopped working."~ */
  IF ~~ THEN REPLY #44805 /* ~"What's a dungeon simulator?"~ */ GOTO 25
  IF ~~ THEN REPLY #44806 /* ~"I have some questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #44807 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0
  SAY #44808 /* ~The modron glares at you then sighs. "It simulates dungeons. What do you think a dungeon simulator would do?"~ */
  IF ~~ THEN REPLY #44809 /* ~"How did it break?"~ */ GOTO 24
  IF ~~ THEN REPLY #44810 /* ~"I have some questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #44811 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 17.3
  SAY #44812 /* ~It frowns at you. "You should know, you fixed it."~ */
  IF ~~ THEN REPLY #44813 /* ~"I have some questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #44814 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 17.4
  SAY #44815 /* ~It pauses. "Contemplating... Thinking... Answering your queries..." It frowns at you.~ */
  IF ~~ THEN REPLY #44816 /* ~"What are you thinking about?"~ */ GOTO 28
  IF ~~ THEN REPLY #44817 /* ~"I have some questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #44818 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #44819 /* ~"Life's many mysteries..." It falls silent.~ */
  IF ~~ THEN REPLY #44820 /* ~"I have some questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #44821 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 29 // from:
  SAY #44822 /* ~You see a cube with two arms, two legs, and two small wings sprouting from its sides. On the front of the cube is an animated face. As you approach, the creature focuses its eyes upon you.~ */
  IF ~~ THEN REPLY #44823 /* ~"Greetings."~ */ GOTO 30
  IF ~~ THEN REPLY #44824 /* ~Ignore the creature.~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #44825 /* ~It stares at you blankly.~ */
  IF ~~ THEN REPLY #44826 /* ~"I have some questions..."~ */ GOTO 31
  IF ~~ THEN REPLY #44827 /* ~"Never mind, I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #44828 /* ~Its gaze never falters as it continues to stare at you.~ */
  IF ~~ THEN REPLY #44829 /* ~"Can you answer some questions?"~ */ GOTO 32
  IF ~~ THEN REPLY #44830 /* ~"Never mind, I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #44831 /* ~Emotionless eyes blink at you as it continues to stare.~ */
  IF ~~ THEN REPLY #44832 /* ~"Never mind, I must be going. Farewell."~ */ EXIT
END
