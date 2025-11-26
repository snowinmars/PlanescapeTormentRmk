// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMSLAVE3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMSLAVE3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37845 /* ~You see a thin young man with rat like features. He seems to be carefully gauging the people around him. He notices you and gives you a blank stare.~ */
  IF ~~ THEN REPLY #37869 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #37870 /* ~Ignore the man.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37846 /* ~He continues to stare at you for a moment as his eyes travel up and down your body. Finally he meets your gaze. "Yes, greetings."~ */
  IF ~~ THEN REPLY #37871 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37872 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.2 4.1 6.1 7.0 8.1 9.0 10.0 11.0 12.0 15.0 16.2 17.2 18.0
  SAY #37847 /* ~He gives you an emotionless smile. "Yes?"~ */
  IF ~~ THEN REPLY #37873 /* ~"What is this place?"~ */ GOTO 3
  IF ~~ THEN REPLY #37874 /* ~"Can you tell me about this ward?"~ */ GOTO 9
  IF ~~ THEN REPLY #37875 /* ~"Can you tell me about the other wards?"~ */ GOTO 10
  IF ~~ THEN REPLY #37876 /* ~"What can you tell me about the city of Sigil?"~ */ GOTO 11
  IF ~~ THEN REPLY #37877 /* ~"Is there anything worth seeing around here?"~ */ GOTO 12
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37878 /* ~"I'm looking for someone named Lothar, or the Master of the Bones..."~ */ GOTO 13
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37879 /* ~"I'm missing a skull... know anyone who'd want something like that?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #37880 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37848 /* ~He stares at you blankly for a moment. "This is the auction block. Slaves are sold here."~ */
  IF ~~ THEN REPLY #37881 /* ~"Why are you being sold?"~ */ GOTO 4
  IF ~~ THEN REPLY #37882 /* ~"I didn't know that there was slavery in Sigil."~ */ GOTO 5
  IF ~~ THEN REPLY #37883 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37884 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37852 /* ~He gazes at you steadily with no emotion on his face. "I owe money that I cannot pay. I am to be sold to cover my debt." ~ */
  IF ~~ THEN REPLY #37885 /* ~"I didn't know that there was slavery in Sigil."~ */ GOTO 5
  IF ~~ THEN REPLY #37886 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37887 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #37853 /* ~He hesitates before answering. "There is slavery everywhere, most people just don't realize it. We are slaves to our emotions, the need to eat and breathe, the need to excrete, even the laws by which we govern ourselves..." He shrugs. "We are slaves."~ */
  IF ~~ THEN REPLY #37888 /* ~"I see your point."~ */ GOTO 6
  IF ~~ THEN REPLY #37889 /* ~"I disagree with you."~ */ GOTO 8
  IF ~~ THEN REPLY #37890 /* ~"I see. I have some questions..."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #37855 /* ~He nods. "By recognizing your slavery to an uncaring multiverse, you can take steps to free yourself."~ */
  IF ~~ THEN REPLY #37891 /* ~"What steps?"~ */ GOTO 7
  IF ~~ THEN REPLY #37892 /* ~"I see. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37893 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0
  SAY #37856 /* ~He shakes his head. "Only you can answer that question. You must look within yourself..." He falls silent and continues to stare at you blankly.~ */
  IF ~~ THEN REPLY #37894 /* ~"I see. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37895 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY #37857 /* ~He shrugs. "Then you are a slave to your own ignorance. Once you realize this you can take steps to free yourself."~ */
  IF ~~ THEN REPLY #37896 /* ~"What steps?"~ */ GOTO 7
  IF ~~ THEN REPLY #37897 /* ~"I see. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37898 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.1
  SAY #37858 /* ~He gazes at you steadily. "This is the Lower Ward. It is the home of the fortunate; those who do not live in the slums of the Hive. It is the home of the unlucky; those who cannot afford the grandeur of the Lady's Ward. It is the home of the hopeful; those who envision more for themselves. It is the home of the hopeless; those who cannot see beyond their own despair..." He shrugs.~ */
  IF ~~ THEN REPLY #37899 /* ~"Uh... I see. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37900 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #37859 /* ~He shrugs. "The wards are much like a play and the actors within it. The background changes from scene to scene, but the people upon the stage remain the same. You can travel the length and breadth of Sigil and you will find this to be true." He gives you a blank gaze.~ */
  IF ~~ THEN REPLY #37901 /* ~"Yes... Well... I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37902 /* ~"I think I should be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.3
  SAY #37860 /* ~He gazes at his surrounds with a calculating eye and a dispassionate stare. "Sigil is as you perceive it to be. For some it is the center of everything and for others it is the hub of nothing. For some it is the beginning of all journeys, and for others the end." He turns a cold stare on you. "What is it to you?"~ */
  IF ~~ THEN REPLY #37903 /* ~"I'm not sure... I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37904 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.4
  SAY #37862 /* ~He opens his arms as if to embrace the world and looks at you with empty eyes. "All things have worth; all things are worthless. All things are worth seeing." He lowers his arms. "We look at the world as individuals and as individuals we assign worth. What has value to me may be worthless to you. All things are therefore worth seeing so that we can build the universe in which we decide to live."~ */
  IF ~~ THEN REPLY #37905 /* ~"Uh... I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37906 /* ~"I really must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.5
  SAY #37863 /* ~He cocks his head to one side and hesitates before answering. "The Master of the Bones does not like visitors. If he desired your presence, he would send for you."~ */
  IF ~~ THEN REPLY #37907 /* ~"What can you tell me about him?"~ */ GOTO 14
  IF ~~ THEN REPLY #37908 /* ~"Do you know where I can find him?"~ */ GOTO 15
  IF ~~ THEN REPLY #37909 /* ~"He did send for me, he stole something that belongs to me."~ */ GOTO 16
  IF ~~ THEN REPLY #37910 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 16.1 17.0
  SAY #37864 /* ~"He is a High Priest of death and as such is deathless himself. He has the power of life and death and wields it with conviction." He thinks for a moment. "He is an ultimate power within Sigil and is not to be trifled with."~ */
  IF ~~ THEN REPLY #37911 /* ~"Do you know where I can find him?"~ */ GOTO 15
  IF ~~ THEN REPLY #37912 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 14.0 16.0 17.1
  SAY #37865 /* ~He turns away from you and looks off into the distance. "He can be found in his home, the Bones of the Night. It is near, but I know not where." He regards you with lifeless eyes. "Continue your search. You will find him or he will find you. Two paths to the same destination."~ */
  IF ~~ THEN REPLY #37913 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37914 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.2
  SAY #37866 /* ~He shakes his head. "Possessions come and go. Be thankful for what you still have."~ */
  IF ~~ THEN REPLY #37915 /* ~"Do you know where I can find him?"~ */ GOTO 15
  IF ~~ THEN REPLY #37916 /* ~"What can you tell me about him?"~ */ GOTO 14
  IF ~~ THEN REPLY #37917 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37918 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.6
  SAY #37867 /* ~He nods his head slowly. "Yes. I would think it to be the work of Lothar, the Master of the Bones."~ */
  IF ~~ THEN REPLY #37919 /* ~"What can you tell me about him?"~ */ GOTO 14
  IF ~~ THEN REPLY #37920 /* ~"Where can I find him?"~ */ GOTO 15
  IF ~~ THEN REPLY #37921 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37922 /* ~"Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #37868 /* ~You see the thin young man with rat like features. He notices you and gives you a blank stare. "Our paths cross again."~ */
  IF ~~ THEN REPLY #37923 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37924 /* ~"Never mind. Farewell."~ */ EXIT
END
