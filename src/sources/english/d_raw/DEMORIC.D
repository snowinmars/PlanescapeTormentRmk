// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEMORIC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DEMORIC~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 96 even though they appear after this state */
~  Global("Emoric","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1790 /* ~You see a heavy-set man with dark skin and grim features. He is dressed in Dustman robes and is regarding you with a stony gaze. ~ */
  IF ~~ THEN REPLY #1791 /* ~"Greetings."~ */ GOTO 3
  IF ~~ THEN REPLY #14590 /* ~Ignore the man.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 96 even though they appear after this state */
~  Global("Emoric","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #14589 /* ~You see Emoric. He is regarding you with a stony gaze. ~ */
  IF ~  !Global("Join_Dustmen","GLOBAL",2)
~ THEN REPLY #14591 /* ~"I had some questions for you."~ */ GOTO 6
  IF ~  Global("Join_Dustmen","GLOBAL",2)
~ THEN REPLY #14592 /* ~"I had some questions for you."~ */ GOTO 2
  IF ~~ THEN REPLY #14823 /* ~Ignore Emoric, continue on.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #14824 /* ~"You have renounced us." Emoric falls silent; it feels like he is pronouncing judgment. "You are no longer a Dustman."~ */
  IF ~~ THEN REPLY #14825 /* ~"I understand. There are still some things I would know, however..."~ */ GOTO 6
  IF ~~ THEN REPLY #14826 /* ~"Sorry to trouble you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY #14827 /* ~"You have the look of one lost." The man's voice is like stone settling. "Did the wind send you, or are you here with purpose?"~ */
  IF ~~ THEN REPLY #14828 /* ~"Who are you?"~ */ DO ~SetGlobal("Emoric","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #14829 /* ~"I am a visitor only. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #14830 /* ~"I am Emoric, Factotum and Initiate of the Fourth Circle." ~ */
  IF ~~ THEN REPLY #14831 /* ~"Is this your bar?"~ */ GOTO 5
  IF ~~ THEN REPLY #14832 /* ~"Very well. That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.0
  SAY #14833 /* ~"If you measure ownership in copper, this is not my establishment. If you measure ownership in spirit, it is mine." He pauses, as if trying to emphasize a point. "The Dustmen here are my students. They are under my protection."~ */
  IF ~~ THEN REPLY #14834 /* ~"Can I ask you some questions...?"~ */ GOTO 6
  IF ~~ THEN REPLY #14835 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.0 2.0 5.0 7.4 8.4 9.4 10.2 11.4 12.3 13.1 14.3 15.1 16.1 18.1 19.1 20.0 21.3 24.0 25.0 26.1 27.2 28.0 29.2 30.4 31.2 38.4 39.2 40.0 41.2 42.2 43.1 44.2 45.2 46.2 47.4 48.2 49.1 50.1 51.1 52.3 53.0 54.1 56.0 57.3 62.3 67.4 68.0 80.8 81.5 82.5 83.2 84.2 86.3 87.2 88.5 89.1 90.3 91.2 92.2 93.4 94.1 96.1 97.2 98.4 99.4 100.4 101.3 102.2
  SAY #14836 /* ~Emoric waits.~ */
  IF ~~ THEN REPLY #14837 /* ~"Is this your bar?"~ */ GOTO 5
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14838 /* ~"Can you tell me about the Dustmen faction?"~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ GOTO 26
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14839 /* ~"Can you tell me about the Dustmen faction?"~ */ GOTO 26
  IF ~  Global("Join_Dustmen","GLOBAL",0)
Global("Dustman_Initiation","GLOBAL",0)
Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #14840 /* ~"I would like to join the Dustmen faction."~ */ GOTO 41
  IF ~  Global("Join_Dustmen","GLOBAL",0)
Global("Dustman_Initiation","GLOBAL",0)
!Global("Join_Godsmen","GLOBAL",6)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #14841 /* ~"I would like to join the Dustmen faction."~ */ GOTO 41
  IF ~  Global("Join_Dustmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",3)
Global("Dustman_Initiation","GLOBAL",0)
!Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Chaosmen","GLOBAL",1)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #14842 /* ~"I would like to join the Dustmen faction."~ */ GOTO 41
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
Global("Dustman_Initiation","GLOBAL",0)
!Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",0)
~ THEN REPLY #14843 /* ~"I would like to join the Dustmen faction."~ */ GOTO 97
  IF ~  Global("Dustman_Initiation","GLOBAL",0)
Global("Join_Anarchists","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",0)
~ THEN REPLY #14844 /* ~Infiltrate Dustmen for Anarchists: "I would like to join the Dustmen faction."~ */ GOTO 97
  IF ~  GlobalGT("Know_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #14845 /* ~"Can you tell me about the Dead Contracts?"~ */ GOTO 29
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #14846 /* ~"I have come here in search of a journal."~ */ GOTO 25
  IF ~  Global("Emoric_Pharod","GLOBAL",0)
Global("Pharod","GLOBAL",0)
~ THEN REPLY #14847 /* ~"I am searching for a man named Pharod. Have you seen him?"~ */ GOTO 7
  IF ~  Global("Emoric_Pharod","GLOBAL",2)
GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #14848 /* ~"I spoke to Pharod and discovered where Pharod is getting the bodies he brings to you."~ */ GOTO 21
  IF ~  Global("Emoric_Pharod","GLOBAL",1)
~ THEN REPLY #14849 /* ~"About seeking out Pharod and asking him where the bodies are from... is the job still open?"~ */ GOTO 17
  IF ~  Global("Dustman_Initiation","GLOBAL",2)
Global("Join_Dustmen","GLOBAL",0)
~ THEN REPLY #14850 /* ~"I spoke with Norochj and did as he asked."~ */ GOTO 55
  IF ~  Global("Dustman_Initiation","GLOBAL",3)
GlobalGT("Await","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",0)
~ THEN REPLY #14851 /* ~"I spoke with Awaiting-Death."~ */ GOTO 59
  IF ~  Global("Dustman_Initiation","GLOBAL",4)
GlobalGT("Sere","GLOBAL",0)
Global("Join_Dustmen","GLOBAL",0)
~ THEN REPLY #14852 /* ~"I spoke with Sere."~ */ GOTO 63
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
Global("Join_Dustmen","GLOBAL",0)
Dead("Soego2")
Global("AR1500_Visited","GLOBAL",1)
~ THEN REPLY #14854 /* ~"I found Soego."~ */ GOTO 69
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
Global("Join_Dustmen","GLOBAL",0)
GlobalGT("Soego","GLOBAL",2)
!Dead("Soego2")
Global("AR1500_Visited","GLOBAL",1)
~ THEN REPLY #14855 /* ~"I found Soego."~ */ GOTO 69
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #14856 /* ~"As a Dustman, I request your help."~ */ GOTO 93
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #14857 /* ~"As a Dustman, I had some questions about our faction..."~ */ GOTO 81
  IF ~~ THEN REPLY #14858 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.10
  SAY #14859 /* ~"I would know why you seek the Collector Pharod." ~ */
  IF ~~ THEN REPLY #14860 /* ~"Collector?"~ */ GOTO 8
  IF ~~ THEN REPLY #14861 /* ~"He stole something from me."~ */ GOTO 13
  IF ~~ THEN REPLY #14862 /* ~"I wish to speak with him."~ */ GOTO 14
  IF ~~ THEN REPLY #14863 /* ~"Why? Is there something wrong?"~ */ GOTO 11
  IF ~~ THEN REPLY #14864 /* ~"Actually, I misspoke. I had some other questions instead..."~ */ GOTO 6
  IF ~~ THEN REPLY #14865 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #14866 /* ~"Collectors gather the dead and bring them to us. I would know why you seek this Collector." ~ */
  IF ~~ THEN REPLY #14867 /* ~"Why do Collectors gather the dead?"~ */ GOTO 9
  IF ~~ THEN REPLY #14868 /* ~"He stole something from me."~ */ GOTO 13
  IF ~~ THEN REPLY #14869 /* ~"I wish to speak with him."~ */ GOTO 14
  IF ~~ THEN REPLY #14870 /* ~"Why? Is there something wrong?"~ */ GOTO 11
  IF ~~ THEN REPLY #14871 /* ~"Actually, I misspoke. I had some other questions instead..."~ */ GOTO 6
  IF ~~ THEN REPLY #14872 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #14873 /* ~"They gather the dead for us for copper's sake."~ */
  IF ~~ THEN REPLY #14874 /* ~"You pay them for the dead bodies? Why?"~ */ GOTO 10
  IF ~~ THEN REPLY #14875 /* ~"He stole something from me."~ */ GOTO 13
  IF ~~ THEN REPLY #14876 /* ~"I wish to speak with him."~ */ GOTO 14
  IF ~~ THEN REPLY #14877 /* ~"Why? Is there something wrong?"~ */ GOTO 11
  IF ~~ THEN REPLY #14878 /* ~"Actually, I misspoke. I had some other questions instead..."~ */ GOTO 6
  IF ~~ THEN REPLY #14879 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #14880 /* ~"The streets are not a burial ground. The Mortuary is where the dead are to be interred. It is the duty of a Dustman." Emoric falls silent for a moment. For some reason, you feel he is trying to make a point. "I would know why you seek this Collector Pharod."~ */
  IF ~~ THEN REPLY #14881 /* ~"I wish to speak with him."~ */ GOTO 14
  IF ~~ THEN REPLY #14882 /* ~"Why? Is there something wrong?"~ */ GOTO 11
  IF ~~ THEN REPLY #14883 /* ~"Actually, I misspoke. I had some other questions instead..."~ */ GOTO 6
  IF ~~ THEN REPLY #14884 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.3 8.3 9.3 10.1 13.0 14.0 15.0
  SAY #14885 /* ~"The Collector Pharod has brought many corpses to the Mortuary of late. One must ask where these bodies are from."~ */
  IF ~  GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #14886 /* ~"I found out where they are from."~ */ GOTO 21
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #14887 /* ~"Tell me more about the bodies."~ */ GOTO 12
  IF ~~ THEN REPLY #14888 /* ~"Look, whatever is between you two is your business. I just want to know where he is."~ */ GOTO 20
  IF ~~ THEN REPLY #14889 /* ~"Perhaps I could find out where these bodies are from."~ */ GOTO 16
  IF ~~ THEN REPLY #14890 /* ~"I really don't know. I had some other questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #14891 /* ~"I don't think I can help you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #14892 /* ~"Some are recent-dead. They still have their last moments in their eyes. Many more bodies are centuries-dead. The dust of ages lies upon their bones. One must ask where these bodies are from."~ */
  IF ~  GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #14893 /* ~"I found out where they are from."~ */ GOTO 21
  IF ~~ THEN REPLY #14894 /* ~"Look, whatever is between you two is your business. I just want to know where he is."~ */ GOTO 20
  IF ~~ THEN REPLY #14895 /* ~"Perhaps I could find out where these bodies are from."~ */ GOTO 16
  IF ~~ THEN REPLY #14896 /* ~"I really don't know. I had some other questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #14897 /* ~"I don't think I can help you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.1 8.1 9.1
  SAY #14898 /* ~Emoric remains silent. His gaze is unnerving... he doesn't seem to blink. ~ */
  IF ~~ THEN REPLY #14899 /* ~"Why do you want to know my business with Pharod?"~ */ GOTO 11
  IF ~~ THEN REPLY #14900 /* ~"I had some other questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #14901 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.2 8.2 9.2 10.0
  SAY #14902 /* ~"As do I. He has made such a thing difficult. He speaks through other men." Emoric falls silent for a moment. "When two men speak through other men, little is said and much is lost." ~ */
  IF ~~ THEN REPLY #14903 /* ~"Why do you want to speak with Pharod?"~ */ GOTO 11
  IF ~~ THEN REPLY #14904 /* ~"Why does Pharod not want to talk to others?"~ */ GOTO 15
  IF ~~ THEN REPLY #14905 /* ~"Do you know where I can find him?"~ */ GOTO 20
  IF ~~ THEN REPLY #14906 /* ~"I had some other questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #14907 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY #14908 /* ~"The why is unclear. He is a man who hides from others and hides his reasons."~ */
  IF ~~ THEN REPLY #14909 /* ~"Why do you want to know my business with Pharod?"~ */ GOTO 11
  IF ~~ THEN REPLY #14910 /* ~"I had some other questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #14911 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.3 12.2
  SAY #14912 /* ~"How would you do such a thing?"~ */
  IF ~~ THEN REPLY #14913 /* ~"I would track down Pharod and ask him."~ */ GOTO 17
  IF ~~ THEN REPLY #14914 /* ~"I really don't know. I had some other questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #14915 /* ~"I don't think I can help you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 6.12 16.0
  SAY #14916 /* ~"If you spoke with the Collector Pharod and returned with his answers, you will have done a great service for the Dustmen. Find where the dead he brings to us are from, and you will be rewarded."~ */
  IF ~~ THEN REPLY #14917 /* ~"Very well. I will find Pharod, speak to him, and find out where these dead bodies he brings you are from."~ */ DO ~SetGlobal("Emoric_Pharod","GLOBAL",2)
~ GOTO 18
  IF ~~ THEN REPLY #14918 /* ~"No thanks. I don't want this job."~ */ DO ~SetGlobal("Emoric_Pharod","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #14919 /* ~Emoric nods. "Your path is our path. Return here when you have the Collector Pharod's answers."~ */
  IF ~~ THEN REPLY #14920 /* ~"Can you tell me where he is?"~ */ GOTO 20
  IF ~~ THEN REPLY #14921 /* ~"Very well. I had some other questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #14922 /* ~"I'll see what I can do, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #14923 /* ~Emoric nods. "Your path is your own."~ */
  IF ~~ THEN REPLY #14924 /* ~"Can you tell me where he is?"~ */ GOTO 20
  IF ~~ THEN REPLY #14925 /* ~"I had some other questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #14926 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 11.2 12.1 14.2 18.0 19.0
  SAY #14927 /* ~"It is not known to me where the Collector Pharod is. He hides from the eyes of the Dustmen. I would seek other Collectors and ask them your question."~ */
  IF ~~ THEN REPLY #14928 /* ~"Very well. I had some other questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #14929 /* ~"I'll see what I can do, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.11 11.0 12.0
  SAY #14930 /* ~"Where do the bodies he brings us come from?"~ */
  IF ~  Global("Lawful_Pharod_3","GLOBAL",0)
~ THEN REPLY #14931 /* ~Truth: "They come from the catacombs beneath Sigil. He's taking the bodies you have buried and selling them back to you. When you bury them again, he just digs them up again."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_1","GLOBALLaw",2)
~ GOTO 22
  IF ~  Global("Lawful_Pharod_3","GLOBAL",1)
~ THEN REPLY #14932 /* ~Truth: "They come from the catacombs beneath Sigil. He's taking the bodies you have buried and selling them back to you. When you bury them again, he just digs them up again."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_2","GLOBALLaw",-2)
~ GOTO 22
  IF ~~ THEN REPLY #14933 /* ~Lie: "A number of people in Ragpicker's Square have contracted a wasting sickness that causes their bodies to decay prematurely. Their bodies just *seem* to be older than they are."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_1","GLOBALLaw",-2)
~ GOTO 22
  IF ~~ THEN REPLY #14934 /* ~"Actually, I misspoke - I haven't found that out yet. I had some other questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #14935 /* ~"Actually, I'm still looking into it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1 21.2
  SAY #14936 /* ~Emoric falls silent. He is staring at you with his stony gaze - and you are suddenly struck with the feeling that his eyes are burrowing into your skull.~ */
  IF ~~ THEN REPLY #14937 /* ~"Uh..."~ */ DO ~SetGlobal("Emoric_Pharod","GLOBAL",3)
AddexperienceParty(2500)
~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #14938 /* ~Emoric nods. "You have done a service for the Dustmen." He removes his hands from his sleeves, then lets his long sleeves drape across the table like a curtain. When he pulls them back, a small lapis lazuli coffin lies upon the table. It is a tiny thing, barely two inches wide and three inches long. The Dustman symbol is engraved on the coffin lid.~ */
  IF ~~ THEN REPLY #14939 /* ~Pick up the box.~ */ DO ~GiveGoldForce(300)
~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #14940 /* ~As you pick up the coffin, it *chirrups,* unfolds, and dissolves into a stream of hundreds of copper pieces, which you (somehow) manage to keep from spilling across the floor of the bar. How all these coins fit into the tiny coffin is beyond you.~ */
  IF ~~ THEN REPLY #14941 /* ~"Thanks. I had some other questions for you..."~ */ GOTO 6
  IF ~~ THEN REPLY #14942 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 6.9
  SAY #14943 /* ~"These eyes have seen no journal. Perhaps your search will take you elsewhere."~ */
  IF ~~ THEN REPLY #14944 /* ~"Very well. I had some other questions for you..."~ */ GOTO 6
  IF ~~ THEN REPLY #14945 /* ~"I will look somewhere else, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 6.1 6.2
  SAY #14946 /* ~"Dustmen seek the True Death. Some call it 'oblivion,' but this is incorrect. To Dustmen, the True Death is freedom from the chains of this false life."~ */
  IF ~~ THEN REPLY #14947 /* ~"False life?"~ */ GOTO 27
  IF ~~ THEN REPLY #14948 /* ~"I had some other questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #14949 /* ~"That had slipped my mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #14950 /* ~"This 'life' that many cling to with their emotions is a false existence. As long as one clings to it, they will continually be reborn into it. One must divest themselves of emotion to escape this cycle."~ */
  IF ~  GlobalLT("Know_Dustmen","GLOBAL",2)
~ THEN REPLY #14951 /* ~"I see. Can you tell me about how your faction is organized?"~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",2)
~ GOTO 28
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #14952 /* ~"I see. Can you tell me about how your faction is organized?"~ */ GOTO 28
  IF ~~ THEN REPLY #14953 /* ~"I had some other questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #14954 /* ~"That had slipped my mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #14955 /* ~"Dustmen are organized into five circles. The Fifth Circle is made of the lowest rank of Dustmen, Initiates. The First Circle is comprised of the highest ranking Dustmen, the ruling body of our faction."~ */
  IF ~~ THEN REPLY #14956 /* ~"I had some other questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #14957 /* ~"That had slipped my mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 6.8
  SAY #14958 /* ~"Do you wish to sign the Dead Contract?"~ */
  IF ~~ THEN REPLY #14959 /* ~"What is it, exactly?"~ */ GOTO 30
  IF ~~ THEN REPLY #14960 /* ~"Yes, I'll sign."~ */ GOTO 31
  IF ~~ THEN REPLY #14961 /* ~"No, I had some other questions I wanted to ask..."~ */ GOTO 6
  IF ~~ THEN REPLY #14962 /* ~"Perhaps some other time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #14963 /* ~"In exchange for fifty copper commons, the Dead Contract gives the Dustman faction the rights to your corpse after death. Do you wish to sign the Dead Contract?"~ */
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14964 /* ~"I'll sign."~ */ GOTO 31
  IF ~  GlobalGT("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14965 /* ~Even though signed Mortai's contract: "I'll sign."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_3","GLOBALLaw",-1)
~ GOTO 31
  IF ~  GlobalGT("Coppereyes_Contract","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #14966 /* ~Even though signed Copper-Eyes' contract: "I'll sign."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_3","GLOBALLaw",-1)
~ GOTO 31
  IF ~  GlobalGT("Mortai_Contract","GLOBAL",0)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14967 /* ~Even though signed both Mortai's and Copper-Eyes' contracts: I'll sign.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_3","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #14968 /* ~"No, I had some other questions I wanted to ask..."~ */ GOTO 6
  IF ~~ THEN REPLY #14969 /* ~"Perhaps some other time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1 30.0 30.1 30.2 30.3
  SAY #14970 /* ~Emoric pulls forth a dusty piece of parchment from his robe and a quill pen. He directs you to sign the parchment in three places.~ */
  IF ~  Global("Memory_Dustman_Contract_2","GLOBAL",0)
~ THEN REPLY #14971 /* ~Sign in the places indicated.~ */ DO ~SetGlobal("Memory_Dustman_Contract_2","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 32
  IF ~  Global("Memory_Dustman_Contract_2","GLOBAL",1)
~ THEN REPLY #14972 /* ~Sign in the places indicated.~ */ GOTO 39
  IF ~~ THEN REPLY #14973 /* ~"I've changed my mind. I had some other questions I wanted to ask..."~ */ GOTO 6
  IF ~~ THEN REPLY #14974 /* ~"Perhaps some other time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0 39.1
  SAY #14975 /* ~You take the quill in your hand, and you begin to scratch your signature into the parchment... the quill pen makes a strange *skritching* noise as it touches the parchment, like a chisel on stone.~ */
  IF ~~ THEN REPLY #14976 /* ~Continue signing...~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #14977 /* ~As you try to sign the parchment, however, you notice that it seems to be impervious to your pen... no matter how hard you try, you can't seem to pen your name. The ink doesn't seem to want to leave the pen.~ */
  IF ~~ THEN REPLY #14978 /* ~"Uh... Emoric? What's with this contract?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #14979 /* ~When you glance up to speak to Emoric, you see that his face has turned to stone... he has become a statue. The rest of the bar seems to have filled with gray haze, and you can no longer make out the rest of the patrons. A faint whisper comes from Emoric's mouth, as if his stone lungs were trying to force a breath from his chest. ~ */
  IF ~~ THEN REPLY #14981 /* ~"Emoric...?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #14983 /* ~You can barely make out the whisper coming from Emoric's stone lips, when you realize that it is not one, but many whispers...

     *Sign*

     *But know that its price is set in soul and stone*

     *And what can change the nature of a man?*

The whispering words rise to a ragged, dead chorus, as if being spoken by five, ten, twenty, a hundred voices - old, young, female, male, desperate, calm, hysterical...~ */
  IF ~~ THEN REPLY #14988 /* ~"Nature of a man...?"~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #14992 /* ~As you speak the words, suddenly you feel faint, and the next thing you hear is Emoric's voice, normal. "Do you still wish to sign?" ~ */
  IF ~~ THEN REPLY #14994 /* ~Try and get your bearings...~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #14996 /* ~It is as if time has exhaled and resumed its normal breathing... the haze filling the bar has vanished, and Emoric is no longer a statue. You feel a strange pressure inside your skull, as if something desperately wishes to surface, but cannot. It was as if you remembered a dozen splinters of memory at once, all stabbing into each other to create an image... and you know, somehow, that every whisper that came from Emoric's stone face belonged to *someone*... now long dead. ~ */
  IF ~~ THEN REPLY #15001 /* ~Look at the parchment again.~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #15003 /* ~As you stare at the dusty parchment upon the table, you know for a fact that this is not the first time you have penned your name to a contract... and perhaps not the first time you have signed one such as this.~ */
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #15009 /* ~Finish signing the contract. ~ */ GOTO 40
  IF ~  GlobalGT("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #15011 /* ~Even though you've signed Mortai's contract, finish signing Emoric's contract anyway. ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_4","GLOBALLaw",-2)
~ GOTO 40
  IF ~  GlobalGT("Coppereyes_Contract","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #15013 /* ~Even though you've signed Copper-Eyes' contract, finish signing Emoric's contract anyway. ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_4","GLOBALLaw",-2)
~ GOTO 40
  IF ~  GlobalGT("Mortai_Contract","GLOBAL",0)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #15015 /* ~Even though you've signed both Mortai's and Copper-Eyes' contracts, finish signing Emoric's contract anyway.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_4","GLOBALLaw",-2)
~ GOTO 40
  IF ~~ THEN REPLY #15017 /* ~"Actually, I think I will hold off before signing this. I had some other questions first..."~ */ GOTO 6
  IF ~~ THEN REPLY #15019 /* ~"I do not wish to sign. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 31.1
  SAY #15029 /* ~As you touch the quill to the parchment again, you hear a whisper, and a rush of thought and memory wells up within your skull...~ */
  IF ~~ THEN REPLY #15031 /* ~Suppress the memory, sign the contract...~ */ GOTO 40
  IF ~~ THEN REPLY #15033 /* ~Surrender to the memory.~ */ GOTO 32
  IF ~~ THEN REPLY #15035 /* ~"Actually, I think I'll hold off before signing this. I had some other questions first..."~ */ GOTO 6
  IF ~~ THEN REPLY #15037 /* ~"I do not wish to sign. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.0 38.1 38.2 38.3 39.0
  SAY #15085 /* ~You scratch a 'X' across the contract in the three places Emoric indicated. As you finish, Emoric takes the contract and hands you a bag of fifty coppers.~ */
  IF ~~ THEN REPLY #15086 /* ~"Now that that is out of the way, I had some other questions for you..."~ */ DO ~SetGlobal("Emoric_Contract","GLOBAL",1)
GivePartyGold(50)
AddexperienceParty(250)
~ GOTO 6
  IF ~~ THEN REPLY #15087 /* ~"Our business is concluded... farewell."~ */ DO ~SetGlobal("Emoric_Contract","GLOBAL",1)
GivePartyGold(50)
AddexperienceParty(250)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 6.3 6.4 6.5
  SAY #15088 /* ~"Another faction already counts you among its ranks."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #15089 /* ~Lie: "You are mistaken. I belong to no other faction."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_5","GLOBALLaw",-2)
~ GOTO 42
  IF ~~ THEN REPLY #15090 /* ~"I wish to forsake that faction and join the Dustmen."~ */ GOTO 45
  IF ~~ THEN REPLY #15091 /* ~"Never mind, then. I had some other questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #15092 /* ~"That had slipped my mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #15093 /* ~"I am not mistaken." Emoric's voice is like stone, but even so, you can detect faint cracks of doubt in his voice.~ */
  IF ~~ THEN REPLY #15094 /* ~"You are in error. My mind is a Dustman's, and it belongs to no other faction. If you *doubt* me, then give me a test."~ */ GOTO 43
  IF ~~ THEN REPLY #15095 /* ~"Very well, I wish to forsake that faction and join the Dustmen."~ */ GOTO 45
  IF ~~ THEN REPLY #15096 /* ~"Never mind. I had some other questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #15097 /* ~"We have nothing more to discuss, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #15098 /* ~As you say the word *doubt,* Emoric flinches slightly; it is almost undetectable beneath his stone-faced facade, but you know what to look for. A Dustman Emoric may be, but it only takes the barest change in his expressions to betray his thoughts.~ */
  IF ~~ THEN REPLY #15099 /* ~"Again - if you *doubt,* test me. You will find my mind clear of emotion and my path that of a Dustman."~ */ GOTO 44
  IF ~~ THEN REPLY #15100 /* ~"Never mind. I had some other questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #15101 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #15102 /* ~Emoric falls silent as he studies you. After a moment, he speaks. "I carry no doubts with me. Yet a test is required. If you desire to join the Dustman faction, I will hear your request."~ */
  IF ~~ THEN REPLY #15103 /* ~"Yes, I desire to join the Dustman faction."~ */ GOTO 46
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15104 /* ~"Again you have misjudged me. I have no *desire* to join the Dustman faction. I merely believe what the Dustmen believe."~ */ GOTO 48
  IF ~~ THEN REPLY #15105 /* ~"Never mind. I had some other questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #15106 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 41.1 42.1
  SAY #15107 /* ~"Is your desire to join the Dustmen faction stronger than your loyalty to this other faction?"~ */
  IF ~~ THEN REPLY #15108 /* ~"Yes."~ */ GOTO 46
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15109 /* ~"You have mistaken my intentions. I have no *desire* to join the Dustman faction. I merely believe in what the Dustmen believe."~ */ GOTO 48
  IF ~~ THEN REPLY #15110 /* ~"I withdraw my request. I had some other questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #15111 /* ~"Never mind; I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.0 45.0 97.0
  SAY #15112 /* ~"If you desire to join the Dustman faction, then passion rules your mind. Passion's path is not a Dustman's path."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15114 /* ~"I misspoke. I have no *desire* to join the Dustman faction. I merely believe what the Dustmen believe."~ */ GOTO 48
  IF ~~ THEN REPLY #15115 /* ~"Can you tell me more about the path of a Dustman, then?"~ */ GOTO 49
  IF ~~ THEN REPLY #15116 /* ~"I withdraw my request. I had some other questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #15117 /* ~"Never mind, then; I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #15118 /* ~"There will be anger from your old faction. You will no longer be welcome in their halls and minds."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #15119 /* ~Renounce Faction: "If that is what must be, that is what must be. My mind must be true to itself, not to another. As of this moment, I forsake the beliefs of the Godsmen."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",7)
~ GOTO 48
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #15120 /* ~Renounce Faction: "If that is what must be, that is what must be. My mind must be true to itself, not to another. As of this moment, I forsake the... uh, 'beliefs' of the Chaosmen."~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",2)
~ GOTO 48
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Dustmen","GLOBAL",1)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #15121 /* ~Renounce Faction: "If that is what must be, that is what must be. My mind must be true to itself, not to another. As of this moment, I forsake the beliefs of the Sensates."~ */ DO ~SetGlobal("Join_Sensates","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
~ GOTO 48
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15122 /* ~Lie to infiltrate Dustmen for Anarchists: "If that is what must be, that is what must be. My mind must be true to itself, not to another. As of this moment, I forsake the beliefs of my old faction."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_6","GLOBALLaw",-2)
~ GOTO 48
  IF ~~ THEN REPLY #15123 /* ~"Never mind, then. I had some other questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #15124 /* ~"Then I am not ready. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 44.1 45.1 46.0 47.0 47.1 47.2 47.3 97.1
  SAY #15203 /* ~"Very well. Do you know our philosophy?"~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15205 /* ~"Yes."~ */ GOTO 51
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15206 /* ~"Not fully, no."~ */ GOTO 49
  IF ~~ THEN REPLY #15207 /* ~"I withdraw my request to join the Dustman faction. I had some other questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #15209 /* ~"Never mind; I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 46.1 48.1
  SAY #15210 /* ~"Dustmen seek the True Death. Some call it 'oblivion,' but this is incorrect. To Dustmen, the True Death is freedom from the chains of this false life."~ */
  IF ~~ THEN REPLY #15211 /* ~"False life?"~ */ GOTO 50
  IF ~~ THEN REPLY #15212 /* ~"I withdraw my request to join the Dustman. I had some other questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #15213 /* ~"Never mind; I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #15214 /* ~"This 'life' that many cling to with their emotions is a false existence. As long as one clings to it, they will continually be reborn to it. One must divest themselves of emotion to escape this cycle."~ */
  IF ~~ THEN REPLY #15216 /* ~"Very well. Now I understand your philosophy."~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ GOTO 51
  IF ~~ THEN REPLY #15217 /* ~"I withdraw my request to join the Dustman. I had some other questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #15219 /* ~"Never mind; I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 48.0 50.0
  SAY #15221 /* ~"Recite it."~ */
  IF ~~ THEN REPLY #15223 /* ~"The goal of all Dustmen is to reach the True Death, oblivion. This 'life' that many cling to with their emotions and passions is a false one. As long as one clings to it, one will continually be reborn into it. One must divest themselves of emotion to escape this cycle."~ */ GOTO 52
  IF ~~ THEN REPLY #15225 /* ~"I withdraw my request. I had some other questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #15227 /* ~"Never mind; I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #15229 /* ~"Do you believe it?"~ */
  IF ~~ THEN REPLY #15230 /* ~Truth: "Yes."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",2)
~ GOTO 53
  IF ~~ THEN REPLY #15232 /* ~Lie: "Yes."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Emoric_7","GLOBALLaw",-2)
~ GOTO 53
  IF ~~ THEN REPLY #15233 /* ~Truth: "Not entirely."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",-2)
IncrementGlobalOnceEx("GLOBALLawful_Emoric_2","GLOBALLaw",2)
~ GOTO 54
  IF ~~ THEN REPLY #15235 /* ~"I withdraw my request to join the Dustmen. I had some other questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #15239 /* ~"Never mind; I no longer wish to become a member of the Dustman faction. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0 52.1 54.0
  SAY #15605 /* ~"Then it shall be tested. Speak with Initiate Norochj. He is here in the bar. Return when you have done what he has asked of you."~ */
  IF ~~ THEN REPLY #15609 /* ~"I will speak with him. I had some questions first, though..."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #15610 /* ~"Very well. I will go speak with him now."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #15611 /* ~"I don't think I want to do this, after all. Farewell."~ */ GOTO 56
END

IF ~~ THEN BEGIN 54 // from: 52.2
  SAY #15612 /* ~"Belief may come with time's passing. Is your conviction so strong that our philosophy shall never have a home in your mind?"~ */
  IF ~~ THEN REPLY #15613 /* ~"I would like to put my uncertainty to time's test. I will spend time among the Dustmen, then examine my beliefs."~ */ GOTO 53
  IF ~~ THEN REPLY #15614 /* ~"I don't think I will ever believe in your philosophy. I withdraw my request. I had some other questions..."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",-2)
~ GOTO 6
  IF ~~ THEN REPLY #15615 /* ~"I don't think I want to join the Dustmen faction. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 6.13
  SAY #15616 /* ~Emoric nods. "You have done as I asked. Do you wish to continue with your initiation?"~ */
  IF ~~ THEN REPLY #15618 /* ~"Yes. I would like to see more of the Dustmen faction."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",3)
~ GOTO 57
  IF ~~ THEN REPLY #15620 /* ~"Yes. I am still not certain my beliefs are those of a Dustman, but I would like to see more of the faction before making a final decision."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",3)
~ GOTO 57
  IF ~~ THEN REPLY #15622 /* ~"No. I would like to withdraw my request to join the Dustmen faction."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 53.2 55.2 57.4 59.5 60.4 62.4 63.3 64.4 65.1 66.1 67.5 68.2 69.2 70.3 71.3 72.1 74.0 75.2 76.2
  SAY #15626 /* ~"Nothing further will be asked of you."~ */
  IF ~~ THEN REPLY #15628 /* ~"Very well. I had some more questions, though..."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",3)
SetGlobal("Dead_Truce","GLOBAL",0)
~ GOTO 6
  IF ~~ THEN REPLY #15630 /* ~"I will take my leave, then. Farewell."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",3)
SetGlobal("Dead_Truce","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 57 // from: 55.0 55.1
  SAY #15634 /* ~"I have another test. Seek one of our Initiates, Awaiting-Death. He is here in the bar. He reaches for the True Death out of passion. If he persists, it shall remain forever out of reach. Speak with him and see if he can be helped."~ */
  IF ~  Global("Await","GLOBAL",2)
~ THEN REPLY #15636 /* ~"I already spoke to him about it."~ */ GOTO 60
  IF ~  Global("Await","GLOBAL",3)
~ THEN REPLY #15638 /* ~"He will not speak to me."~ */ GOTO 58
  IF ~  !Global("Await","GLOBAL",2)
!Global("Await","GLOBAL",3)
~ THEN REPLY #15640 /* ~"I will speak to Awaiting-Death and see what can be done."~ */ EXIT
  IF ~~ THEN REPLY #15642 /* ~"I will speak with him. I had some other questions first, though..."~ */ GOTO 6
  IF ~~ THEN REPLY #15644 /* ~"I withdraw my request to join the Dustmen."~ */ GOTO 56
END

IF ~~ THEN BEGIN 58 // from: 57.1 59.0
  SAY #15645 /* ~"He would not hear my words as well. I would hear your thoughts on Awaiting-Death."~ */
  IF ~~ THEN REPLY #15646 /* ~"Can a Dustman filled with so much passion truly be called a Dustman? I think not."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15647 /* ~"He is not a Dustman. Perhaps in time."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15648 /* ~"He is a Dustman."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15649 /* ~"I have no thoughts on this. What is, is."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
END

IF ~~ THEN BEGIN 59 // from: 6.14
  SAY #15651 /* ~"I would know what you spoke of."~ */
  IF ~  Global("Await","GLOBAL",3)
~ THEN REPLY #15652 /* ~"He will not speak to me. I tried, but he would not hear me."~ */ GOTO 58
  IF ~  Global("Await_Deal_Answer","GLOBAL",0)
Global("Await","GLOBAL",2)
~ THEN REPLY #15653 /* ~"He has chosen life over death. For now."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",1)
~ THEN REPLY #15655 /* ~"He has chosen to live for a while longer and attempt to dampen his passion for death."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",2)
~ THEN REPLY #15656 /* ~"He has chosen to endure this life, and in enduring, dampen his passion for death."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",3)
~ THEN REPLY #15658 /* ~"He has chosen to live for a while longer and learn how to die."~ */ GOTO 61
  IF ~~ THEN REPLY #15660 /* ~"I withdraw my request to join the Dustmen."~ */ GOTO 56
END

IF ~~ THEN BEGIN 60 // from: 57.0
  SAY #15666 /* ~"I would know what you spoke of."~ */
  IF ~  Global("Await_Deal_Answer","GLOBAL",0)
~ THEN REPLY #15668 /* ~"He has chosen life over death. For now."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",1)
~ THEN REPLY #15670 /* ~"He has chosen to live for a while longer and attempt to dampen his passion for death."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",2)
~ THEN REPLY #15671 /* ~"He has chosen to endure this life, and in enduring, dampen his passion for death."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",3)
~ THEN REPLY #15673 /* ~"He has chosen to live for a while longer and learn how to die."~ */ GOTO 61
  IF ~~ THEN REPLY #15674 /* ~"I withdraw my request to join the Dustmen."~ */ GOTO 56
END

IF ~~ THEN BEGIN 61 // from: 59.1 59.2 59.3 59.4 60.0 60.1 60.2 60.3
  SAY #15678 /* ~"I would know your thoughts on Awaiting-Death's choice."~ */
  IF ~~ THEN REPLY #15680 /* ~"He will never be a Dustman."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15681 /* ~"He is not a Dustman. Perhaps in time."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15683 /* ~"He is a Dustman. He has learned his lesson."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15685 /* ~"I have no thoughts on this. What is, is."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 58.0 58.1 58.2 58.3 61.0 61.1 61.2 61.3
  SAY #15692 /* ~"You spoke with the Initiate Awaiting-Death. Your thoughts on the Initiate Awaiting-Death are known to me. You have done as I asked." Emoric nods. "I have another test. There is another I wish you to speak to here at the bar. Her name is Sere. Sere is an Initiate of the Fifth Circle." Emoric falls silent for a moment. "She no longer holds Dustmen teachings as she once did. Her heart is bitter. One would know why."~ */
  IF ~  Global("Sere","GLOBAL",2)
~ THEN REPLY #15693 /* ~"She will not speak to me."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",4)
AddexperienceParty(500)
~ GOTO 65
  IF ~  Global("Sere","GLOBAL",1)
GlobalGT("Sere_Beliefs","GLOBAL",0)
~ THEN REPLY #15695 /* ~"I already spoke to her. The fever she was stricken with a half-month ago has made her afraid of death. She blames the Dustmen."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",4)
~ GOTO 64
  IF ~  !Global("Sere","GLOBAL",2)
~ THEN REPLY #15697 /* ~"I will go speak to her now."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",4)
~ EXIT
  IF ~~ THEN REPLY #15699 /* ~"I will speak with her. I had some other questions first, though..."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",4)
~ GOTO 6
  IF ~~ THEN REPLY #15701 /* ~"I do not wish this test. I withdraw my request to join the Dustmen."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",4)
~ GOTO 56
END

IF ~~ THEN BEGIN 63 // from: 6.15
  SAY #15735 /* ~"I would know what she said to you."~ */
  IF ~  Global("Sere","GLOBAL",2)
~ THEN REPLY #15737 /* ~"She will not speak to me."~ */ DO ~AddexperienceParty(500)
~ GOTO 65
  IF ~  Global("Sere","GLOBAL",1)
GlobalGT("Sere_Beliefs","GLOBAL",0)
~ THEN REPLY #15739 /* ~"The fever she was stricken with a half-month ago has made her afraid of death. She blames the Dustmen."~ */ GOTO 64
  IF ~~ THEN REPLY #15740 /* ~"Nothing of import yet. I will speak to her again."~ */ EXIT
  IF ~~ THEN REPLY #15741 /* ~"I withdraw my request to join the Dustmen."~ */ GOTO 56
END

IF ~~ THEN BEGIN 64 // from: 62.1 63.1
  SAY #15744 /* ~"I would know what you said to her."~ */
  IF ~  Global("Sere_Answer","GLOBAL",1)
~ THEN REPLY #15746 /* ~"I told her that her fear and doubt has defined her. She is not a Dustman."~ */ DO ~AddexperienceParty(500)
~ GOTO 66
  IF ~  Global("Sere_Answer","GLOBAL",2)
~ THEN REPLY #15747 /* ~"I told her that her fear is temporary. Time will prove her a Dustman."~ */ DO ~AddexperienceParty(500)
~ GOTO 66
  IF ~  Global("Sere_Answer","GLOBAL",3)
~ THEN REPLY #15749 /* ~"I told her that her fear is temporary. Time will prove her a Dustman."~ */ DO ~AddexperienceParty(500)
~ GOTO 66
  IF ~  Global("Sere_Answer","GLOBAL",0)
~ THEN REPLY #15750 /* ~"I found the source of her distress, but I was unable to solve it for her."~ */ DO ~AddexperienceParty(500)
~ GOTO 66
  IF ~~ THEN REPLY #15752 /* ~"I do not wish to say. I withdraw my request to join the Dustmen."~ */ GOTO 56
END

IF ~~ THEN BEGIN 65 // from: 62.0 63.0
  SAY #15751 /* ~"She would not hear me, either." Emoric nods. "You have done as I asked. Do you wish to continue with your initiation?"~ */
  IF ~~ THEN REPLY #15753 /* ~"Yes. There is more I would learn about the Dustman faction. I wish to continue with the tests."~ */ GOTO 67
  IF ~~ THEN REPLY #15754 /* ~"No. I withdraw my request to join the Dustmen."~ */ GOTO 56
END

IF ~~ THEN BEGIN 66 // from: 64.0 64.1 64.2 64.3
  SAY #15755 /* ~"You have done as I asked." Emoric nods. "Do you wish to continue with your initiation?"~ */
  IF ~~ THEN REPLY #15756 /* ~"Yes. There is more I would learn about the Dustman faction. I wish to continue with the tests."~ */ GOTO 67
  IF ~~ THEN REPLY #15757 /* ~"I don't think there is anything more I can learn. I withdraw my request to join the Dustmen."~ */ GOTO 56
END

IF ~~ THEN BEGIN 67 // from: 65.0 66.0
  SAY #15758 /* ~"An Initiate of the Fifth Circle, Soego, has undertaken missionary service for the Dustmen." Emoric falls silent for a moment... you don't know whether he's trying to make a point or whether he's confused. "His path is not one known to me nor to the faction. I would know his whereabouts."~ */
  IF ~  Global("Soego","GLOBAL",1)
!Dead("Soego2")
Global("AR1500_Visited","GLOBAL",0)
~ THEN REPLY #15759 /* ~"Isn't Soego at the Mortuary?"~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 68
  IF ~  Global("Soego","GLOBAL",2)
!Dead("Soego2")
Global("AR1500_Visited","GLOBAL",0)
~ THEN REPLY #15760 /* ~"I thought I had kil... er, last I heard, he had suffered an accident. Isn't he still in the Mortuary?"~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 68
  IF ~  Dead("Soego2")
Global("AR1500_Visited","GLOBAL",1)
~ THEN REPLY #15761 /* ~"I already found him."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 69
  IF ~  GlobalGT("Soego","GLOBAL",2)
!Dead("Soego2")
Global("AR1500_Visited","GLOBAL",1)
~ THEN REPLY #15762 /* ~"I already found him."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 69
  IF ~~ THEN REPLY #15763 /* ~"I'll go look for him, then. I had some questions, first, though..."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 6
  IF ~~ THEN REPLY #15764 /* ~"I do not wish to do this. I withdraw my request to join the Dustmen."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 56
END

IF ~~ THEN BEGIN 68 // from: 67.0 67.1
  SAY #15765 /* ~"No longer. His departure was sudden."~ */
  IF ~~ THEN REPLY #15766 /* ~"I'll go look for him, then. I had some questions, first, though..."~ */ GOTO 6
  IF ~~ THEN REPLY #15767 /* ~"I'll go look for him, then. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #15768 /* ~"I withdraw my request to join the Dustmen."~ */ GOTO 56
END

IF ~~ THEN BEGIN 69 // from: 6.16 6.17 67.2 67.3
  SAY #15769 /* ~"I would know his whereabouts."~ */
  IF ~  Dead("Soego2")
~ THEN REPLY #15770 /* ~"I found him in the catacombs beneath Sigil. He died there."~ */ GOTO 71
  IF ~  GlobalGT("Soego","GLOBAL",2)
!Dead("Soego2")
~ THEN REPLY #15771 /* ~"I found him in the catacombs beneath Sigil."~ */ GOTO 70
  IF ~~ THEN REPLY #15772 /* ~"I do not wish to say. I withdraw my request to join the Dustmen."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",6)
AddexperienceParty(2500)
~ GOTO 56
END

IF ~~ THEN BEGIN 70 // from: 69.1
  SAY #15773 /* ~"Why is he there?"~ */
  IF ~  GlobalLT("Soego","GLOBAL",3)
~ THEN REPLY #15774 /* ~"I do not know."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~  GlobalGT("Soego","GLOBAL",2)
~ THEN REPLY #15776 /* ~"He has discovered a group of undead guardians who were protecting the catacombs. He is trying to convince them to join the True Death."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~  Global("Soego","GLOBAL",4)
~ THEN REPLY #15778 /* ~"He is infected with lycanthropy. His mind is no longer his own and his Dustman beliefs are lost."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~~ THEN REPLY #15779 /* ~"I do not wish to say. I withdraw my request to join the Dustmen."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",6)
~ GOTO 56
END

IF ~~ THEN BEGIN 71 // from: 69.0
  SAY #15780 /* ~"Why was he there?"~ */
  IF ~  GlobalLT("Soego","GLOBAL",3)
~ THEN REPLY #15781 /* ~"I do not know."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~  GlobalGT("Soego","GLOBAL",2)
~ THEN REPLY #15783 /* ~"He discovered a group of undead guardians who were protecting the catacombs. He was trying to convince them to join the True Death."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~  Global("Soego","GLOBAL",4)
~ THEN REPLY #15785 /* ~"He was infected with lycanthropy, which drove him into the catacombs. His mind was no longer his own and his Dustman beliefs were lost."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~~ THEN REPLY #15786 /* ~"I do not wish to say. I withdraw my request to join the Dustmen."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",6)
~ GOTO 56
END

IF ~~ THEN BEGIN 72 // from: 70.0 70.1 70.2 71.0 71.1 71.2
  SAY #15790 /* ~"Very well. You found him." Emoric doesn't react to your answer other than give a slight nod. "You have done all the tasks that I have asked of you. I will make you a Dustman, an Initiate of the Fifth Circle. Do you still wish to be a member of the faction?"~ */
  IF ~~ THEN REPLY #15791 /* ~"Yes."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",6)
~ GOTO 73
  IF ~~ THEN REPLY #15792 /* ~"No. I have changed my mind."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",6)
~ GOTO 56
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #15794 /* ~"Your initiation requires a promise."~ */
  IF ~~ THEN REPLY #15797 /* ~"A promise?"~ */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #15798 /* ~"You must promise to serve the Dustmen. You must promise that you have left Life behind. You must promise that your goal is to reach the True Death."~ */
  IF ~~ THEN REPLY #15800 /* ~"Uh... no thanks."~ */ GOTO 56
  IF ~~ THEN REPLY #15802 /* ~"Very well."~ */ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.1
  SAY #15843 /* ~"Again: Do you believe the tenets of the Dustmen?"~ */
  IF ~~ THEN REPLY #15844 /* ~"Lie: Yes."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_10","GLOBALLaw",-2)
IncrementGlobal("Dustman_Belief","GLOBAL",-2)
~ GOTO 76
  IF ~~ THEN REPLY #15845 /* ~"Yes."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",2)
~ GOTO 76
  IF ~~ THEN REPLY #15846 /* ~"No. I have changed my mind."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",-2)
~ GOTO 56
END

IF ~~ THEN BEGIN 76 // from: 75.0 75.1
  SAY #15848 /* ~"I shall act as your witness. Make the promise."~ */
  IF ~~ THEN REPLY #15849 /* ~Make Vow: "I promise to serve the Dustmen. I have left Life behind. I seek only the True Death."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_4","GLOBALLaw",3)
~ GOTO 77
  IF ~~ THEN REPLY #15850 /* ~Lie: "I promise to serve the Dustmen. I have left Life behind. I seek only the True Death."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_11","GLOBALLaw",-3)
~ GOTO 77
  IF ~~ THEN REPLY #15851 /* ~"No. I have changed my mind."~ */ GOTO 56
END

IF ~~ THEN BEGIN 77 // from: 76.0 76.1
  SAY #15853 /* ~"You are now numbered among the Dead. There are things I must tell you."~ */
  IF ~~ THEN REPLY #15854 /* ~Listen.~ */ GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #15855 /* ~"The walking dead dwell among the Dustmen. Work with the Dustmen. Yet at other times, they have been the enemies of the living." ~ */
  IF ~~ THEN REPLY #15856 /* ~"That has not escaped my notice."~ */ GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY #15857 /* ~"The Dustmen have a truce with all the Dead. This truce is known as the *Dead Truce.* The dead shall never harm a Dustman as long as we uphold it." As Emoric intones these words, you suddenly feel a strange crawling sensation in the back of your skull... it has something to do with the Dead Truce, but you can't recall what it is.~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Chaosmen","GLOBAL",1)
~ THEN REPLY #15858 /* ~"I see."~ */ DO ~SetGlobal("Dead_Truce","GLOBAL",1)
SetGlobal("Dustman_Ressurection","GLOBAL",1)
SetGlobal("Join_Dustmen","GLOBAL",1)
GiveExperience(Protagonist,2500)
~ JOURNAL #61611 /* ~In joining the Dustmen, Emoric spoke of the 'Dead Truce' - apparently, Dustmen maintain a truce with the undead such as skeletons and zombies, and these creatures will not harm a member of their faction unless attacked first. However, when he made me a Dustman, I had a strange feeling that I had somehow already broken this compact somehow. The Dead Truce may help serve as a ward against attacks by the undead, but I have a strange suspicion it will not prevent them from attacking me. I do not know why... perhaps I have committed some crime against them in the past?~ */ GOTO 80
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15860 /* ~"Uh... yeah, I suppose they would never harm a true Dustman... anyone pretending to be a Dustman wouldn't have the same protection, I suppose."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 80
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15861 /* ~"Uh... yeah, I suppose they would never harm a true Dustman... anyone pretending to be a Dustman wouldn't have the same protection, I suppose."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",1)
SetGlobal("Join_Sensates","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
GiveExperience(Protagonist,1000)
~ GOTO 80
  IF ~  Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15862 /* ~"Uh... yeah, I suppose they would never harm a true Dustman... anyone pretending to be a Dustman wouldn't have the same protection, I suppose."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",7)
GiveExperience(Protagonist,1000)
~ GOTO 80
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15863 /* ~"Uh... yeah, I suppose they would never harm a true Dustman... anyone pretending to be a Dustman wouldn't have the same protection, I suppose."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",1)
SetGlobal("Join_Chaosmen","GLOBAL",2)
GiveExperience(Protagonist,1000)
~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.0 79.1 79.2 79.3 79.4
  SAY #15867 /* ~"Furthermore, there exist magics that prolong life or interfere with death. Such magics are an anathema to our faction. They rarely work on members of our faction. Nothing must attempt to interfere with your passage to the True Death. Do you understand?"~ */
  IF ~~ THEN REPLY #15875 /* ~"What if it's... difficult... for the person in question to die?"~ */ GOTO 82
  IF ~~ THEN REPLY #15876 /* ~"Does that include healing spells?"~ */ GOTO 89
  IF ~~ THEN REPLY #15877 /* ~"I had a question about this Dead Truce..."~ */ GOTO 90
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15878 /* ~"Uh... yeah, I suppose that anti-resurrection taboo would only apply to a true Dustman, huh? It doesn't prevent healing spells, does it?"~ */ GOTO 89
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15879 /* ~"Uh... yeah, I suppose that anti-resurrection taboo would only apply to a true Dustman, huh? It doesn't prevent healing spells, does it?"~ */ GOTO 89
  IF ~  Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15880 /* ~"Uh... yeah, I suppose that anti-resurrection taboo would only apply to a true Dustman, huh? It doesn't prevent healing spells, does it?"~ */ GOTO 89
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15881 /* ~"Uh... yeah, I suppose that anti-resurrection taboo would only apply to a true Dustman, huh? It doesn't prevent healing spells, does it?"~ */ GOTO 89
  IF ~~ THEN REPLY #15882 /* ~"I understand. Now that I am a Dustman, I had some faction-related questions..."~ */ GOTO 81
  IF ~~ THEN REPLY #15883 /* ~"I had some non-faction-related questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #15884 /* ~"I understand. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 6.19 80.7 82.4 83.1 84.1 86.2 87.1 88.4 89.0 90.2 91.1 92.1 93.3 94.0 96.0 98.3 99.3 100.3 101.2 102.1
  SAY #15885 /* ~Emoric waits.~ */
  IF ~~ THEN REPLY #15886 /* ~"About that 'nothing should interfere with the True Death' philosophy. Uh, what if it's... difficult... for the person in question to die?"~ */ GOTO 82
  IF ~~ THEN REPLY #15887 /* ~"Does that 'non-resurrection' policy include healing spells?"~ */ GOTO 89
  IF ~~ THEN REPLY #15888 /* ~"I had a question about the Dead Truce."~ */ GOTO 90
  IF ~~ THEN REPLY #15889 /* ~"As a Dustman, what sort of assistance is available to me?"~ */ GOTO 98
  IF ~~ THEN REPLY #15890 /* ~"I need some assistance."~ */ GOTO 93
  IF ~~ THEN REPLY #15891 /* ~"I had some other, non-faction-related questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #15892 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 80.0 81.0
  SAY #15893 /* ~"The nature of your question is unclear, Initiate."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #15894 /* ~Truth: "I think I'm immortal."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_5","GLOBALLaw",1)
~ GOTO 99
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #15895 /* ~Truth: "I think I'm immortal."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_5","GLOBALLaw",1)
~ GOTO 83
  IF ~~ THEN REPLY #15896 /* ~"Well, I know someone who is immortal, and I'm asking on his behalf."~ */ GOTO 86
  IF ~~ THEN REPLY #15897 /* ~"What if the Dustman in question was immortal?"~ */ GOTO 88
  IF ~~ THEN REPLY #15898 /* ~"Never mind. I had some other faction-related questions..."~ */ GOTO 81
  IF ~~ THEN REPLY #15899 /* ~"Forget it. I had some other, non-faction-related questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #15900 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 82.1 88.1 99.0
  SAY #15901 /* ~"What prompts you to say such a thing, Initiate?"~ */
  IF ~~ THEN REPLY #15902 /* ~"I cannot seem to die. I can be wounded and recover quickly."~ */ GOTO 84
  IF ~~ THEN REPLY #15903 /* ~"Never mind. I had some other faction-related questions..."~ */ GOTO 81
  IF ~~ THEN REPLY #15904 /* ~"I had some other, non-faction-related questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #15905 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 83.0
  SAY #15906 /* ~Emoric stares at you. "Show me, Initiate."~ */
  IF ~~ THEN REPLY #15907 /* ~Do it.~ */ GOTO 85
  IF ~~ THEN REPLY #15908 /* ~"Never mind. I had some other faction-related questions..."~ */ GOTO 81
  IF ~~ THEN REPLY #15909 /* ~"Forget it... I was being unclear. I had some other, non-faction-related questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #15910 /* ~"I misspoke. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from: 84.0
  SAY #15911 /* ~You make a small cut, and the wound heals almost immediately. Emoric stares at the wound as it heals, is silent for a moment, then turns his gaze back to you. "Something about your nature resists the True Death. You are no longer a Dustman. You must leave."~ */
  IF ~~ THEN REPLY #15912 /* ~"If I must... I renounce the Dustmen. Farewell."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",3)
SetGlobal("Dead_Truce","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 86 // from: 82.2 88.2 99.1
  SAY #15913 /* ~Emoric is silent for a moment. "Then... this friend... suffers greatly. He has trapped himself in this false existence and can never reach the True Death."~ */
  IF ~~ THEN REPLY #15914 /* ~"Trapped *himself?*"~ */ GOTO 101
  IF ~~ THEN REPLY #15915 /* ~"Why would someone remain trapped in this false existence?"~ */ GOTO 87
  IF ~~ THEN REPLY #15916 /* ~"I see. I had some other faction-related questions..."~ */ GOTO 81
  IF ~~ THEN REPLY #15917 /* ~"I had some other, non-faction-related questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #15918 /* ~"Understood. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 86.1 101.1 102.0
  SAY #15919 /* ~"To reach the True Death, one must divest themselves of all passions and any ties to this false existence. These things act as an anchor on the spirit. Many creatures, such as ghosts or other restless spirits, are confined to this false existence because of unfulfilled passions."~ */
  IF ~~ THEN REPLY #15920 /* ~"When you said before that this immortal person has trapped themselves in this life, what did you mean?"~ */ GOTO 101
  IF ~~ THEN REPLY #15921 /* ~"I see. I had some other faction-related questions..."~ */ GOTO 81
  IF ~~ THEN REPLY #15922 /* ~"I had some other, non-faction-related questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #15923 /* ~"I see. Thanks for the information. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 82.3 99.2
  SAY #15924 /* ~"Then they would not be a Dustman. Their belief in immortality would trap the Initiate in this life, and they would never reach the True Death." Emoric falls silent for a moment. "What prompts such a question, Initiate?"~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #15925 /* ~Truth: "I think I'm immortal."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_5","GLOBALLaw",1)
~ GOTO 99
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #15926 /* ~Truth: "I think I'm immortal."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_5","GLOBALLaw",1)
~ GOTO 83
  IF ~~ THEN REPLY #15927 /* ~"I had this immortal friend, see. I was asking on his behalf."~ */ GOTO 86
  IF ~~ THEN REPLY #15928 /* ~"Their *belief* would trap them? How?"~ */ GOTO 101
  IF ~~ THEN REPLY #15929 /* ~"No reason. I had some other faction-related questions..."~ */ GOTO 81
  IF ~~ THEN REPLY #15930 /* ~"Never mind. I had some other, non-faction-related questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #15931 /* ~"I was just asking. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 80.1 80.3 80.4 80.5 80.6 81.1
  SAY #15932 /* ~"Curative magics will work normally. Reincarnations and resurrection magics, however, should not be used on members of our orders. Such magics go against a believer's passage to True Death."~ */
  IF ~~ THEN REPLY #15933 /* ~"I see. I had some other faction-related questions..."~ */ GOTO 81
  IF ~~ THEN REPLY #15934 /* ~"I had some other, non-faction-related questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #15935 /* ~"Very well. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 80.2 81.2
  SAY #15936 /* ~Emoric waits.~ */
  IF ~~ THEN REPLY #15937 /* ~"What happens if I attack one of the walking dead?"~ */ GOTO 91
  IF ~~ THEN REPLY #15938 /* ~"What about self-defense?"~ */ GOTO 92
  IF ~~ THEN REPLY #15939 /* ~"I see. I had some other faction-related questions..."~ */ GOTO 81
  IF ~~ THEN REPLY #15940 /* ~"I had some other, non-faction-related questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #15941 /* ~"Very well. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 90.0 92.0
  SAY #15942 /* ~"Then you will have broken the Dead Truce."~ */
  IF ~~ THEN REPLY #15943 /* ~"What about self-defense?"~ */ GOTO 92
  IF ~~ THEN REPLY #15944 /* ~"I see. I had some other faction-related questions..."~ */ GOTO 81
  IF ~~ THEN REPLY #15945 /* ~"I had some other, non-faction-related questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #15946 /* ~"Very well. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 90.1 91.0
  SAY #15947 /* ~"There will never be a situation where the Dead will attack you as long as the Truce is maintained."~ */
  IF ~~ THEN REPLY #15948 /* ~"What happens if I attack one of them?"~ */ GOTO 91
  IF ~~ THEN REPLY #15949 /* ~"I see. I had some other faction-related questions..."~ */ GOTO 81
  IF ~~ THEN REPLY #15950 /* ~"I had some other, non-faction-related questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #15951 /* ~"Very well. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 6.18 81.4
  SAY #15952 /* ~"How may this one help you, Initiate?"~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #15953 /* ~"I am in need of healing."~ */ DO ~FullHeal(Protagonist)
~ GOTO 94
  IF ~~ THEN REPLY #15954 /* ~"I need a place to rest."~ */ GOTO 95
  IF ~~ THEN REPLY #15955 /* ~"Do you have any spells or items that could help me?"~ */ DO ~StartStore("Emoric",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #15956 /* ~"Nothing, never mind. I had some other faction-related questions..."~ */ GOTO 81
  IF ~~ THEN REPLY #15957 /* ~"I had some other, non-faction-related questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #15958 /* ~"Nothing today, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 93.0 98.0 100.0
  SAY #15959 /* ~Emoric bows his head slightly, and you feel a numbing chill pass through your body, as if your bones and muscles were turning to stone. As the chill winds its way through your body, the pain from your wounds subsides. Moments later, sensation returns... but the pain is now gone.~ */
  IF ~~ THEN REPLY #15960 /* ~"Thank you. I had some other faction-related questions..."~ */ GOTO 81
  IF ~~ THEN REPLY #15961 /* ~"I feel whole again. I had some other, non-faction-related questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #15962 /* ~"Thank you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 93.1 98.1 100.1
  SAY #15963 /* ~"You may rest here, Initiate."~ */
  IF ~~ THEN REPLY #15964 /* ~"Thank you..."~ */ DO ~SetGlobal("cd_int_9","LOCALS",1)
FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END

IF WEIGHT #0 ~  Global("cd_int_9","LOCALS",1)
~ THEN BEGIN 96 // from:
  SAY #15965 /* ~You awake some time later feeling refreshed, then make your way back to Emoric.~ */
  IF ~~ THEN REPLY #15966 /* ~"I am rested, thank you. I had some other faction-related questions..."~ */ DO ~SetGlobal("cd_int_9","LOCALS",0)
~ GOTO 81
  IF ~~ THEN REPLY #15967 /* ~"I feel whole again. I had some other, non-faction-related questions..."~ */ DO ~SetGlobal("cd_int_9","LOCALS",0)
~ GOTO 6
  IF ~~ THEN REPLY #15968 /* ~"Thank you for letting me rest. Farewell."~ */ DO ~SetGlobal("cd_int_9","LOCALS",0)
~ EXIT
END

IF ~~ THEN BEGIN 97 // from: 6.6 6.7
  SAY #15969 /* ~"If you desire to join the Dustman faction, I will hear your request."~ */
  IF ~~ THEN REPLY #15970 /* ~"Yes, I desire to join the Dustman faction."~ */ GOTO 46
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15971 /* ~"You have misjudged me. I have no *desire* to join the Dustman faction. I merely believe what the Dustmen believe."~ */ GOTO 48
  IF ~~ THEN REPLY #15972 /* ~"Never mind. I had some other questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #15973 /* ~"Not today. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from: 81.3
  SAY #15974 /* ~"As a Dustman Initiate, you will have access to our storehouse of knowledge and our storehouse of magic and items. You may also come to me if your body is in need of healing, or if your body is in need of rest."~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #15975 /* ~"I am in need of healing."~ */ DO ~FullHeal(Protagonist)
~ GOTO 94
  IF ~~ THEN REPLY #15976 /* ~"I need a place to rest."~ */ GOTO 95
  IF ~~ THEN REPLY #15977 /* ~"What do you have in your storehouse?"~ */ DO ~StartStore("Emoric",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #15978 /* ~"I see. I had some other faction-related questions..."~ */ GOTO 81
  IF ~~ THEN REPLY #15979 /* ~"Very well. I had some other, non-faction-related questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #15980 /* ~"Thank you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from: 82.0 88.0
  SAY #15981 /* ~As you are about to speak, you feel a prickling sensation along the back of your skull. You have a feeling that mentioning your 'condition' to Emoric might be a bad thing to do. He is still staring at you, waiting for you to speak.~ */
  IF ~~ THEN REPLY #15982 /* ~Truth: "I think I'm immortal."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_6","GLOBALLaw",3)
~ GOTO 83
  IF ~~ THEN REPLY #15983 /* ~"Well, I know someone who is immortal, and I'm asking on his behalf."~ */ GOTO 86
  IF ~~ THEN REPLY #15984 /* ~"What if the Dustman in question was immortal?"~ */ GOTO 88
  IF ~~ THEN REPLY #15985 /* ~"Never mind. I had some other faction-related questions..."~ */ GOTO 81
  IF ~~ THEN REPLY #15986 /* ~"Forget it. I had some other, non-faction-related questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #15987 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 100 // from:
  SAY #15988 /* ~"Did you require anything else, Initiate?"~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #15989 /* ~"I am in need of healing."~ */ DO ~FullHeal(Protagonist)
~ GOTO 94
  IF ~~ THEN REPLY #15990 /* ~"I need a place to rest."~ */ GOTO 95
  IF ~~ THEN REPLY #15991 /* ~"I would like to look in the store again."~ */ DO ~StartStore("Emoric",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #15992 /* ~"I had some faction-related questions for you..."~ */ GOTO 81
  IF ~~ THEN REPLY #15993 /* ~"Yes. I had some other, non-faction-related questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #15994 /* ~"Nothing today, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 86.0 87.0 88.3
  SAY #15995 /* ~"Immortality is a choice. Belief, whether one's own or another's, affects the flesh. One is immortal when one does not *want* to give up life."~ */
  IF ~~ THEN REPLY #15996 /* ~"But then, by your argument, death is also a choice. Why do people die in the first place?"~ */ GOTO 102
  IF ~~ THEN REPLY #15997 /* ~"Why would someone remain trapped in this false existence?"~ */ GOTO 87
  IF ~~ THEN REPLY #15998 /* ~"I see. I had some other faction-related questions..."~ */ GOTO 81
  IF ~~ THEN REPLY #15999 /* ~"Hmmmm. I had some other, non-faction-related questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #16000 /* ~"Interesting. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #16001 /* ~"Death is also a choice. But unlike immortality, there are many that believe in death. Their belief permits us to die." Emoric falls silent for a moment. "We are not meant to live forever, Initiate. In our minds, we know this to be true."~ */
  IF ~~ THEN REPLY #16002 /* ~"So... why would someone remain trapped in this false existence?"~ */ GOTO 87
  IF ~~ THEN REPLY #16003 /* ~"I see. I had some other faction-related questions..."~ */ GOTO 81
  IF ~~ THEN REPLY #16004 /* ~"Hmmmm. I had some other, non-faction-related questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #16005 /* ~"Interesting. Farewell."~ */ EXIT
END
