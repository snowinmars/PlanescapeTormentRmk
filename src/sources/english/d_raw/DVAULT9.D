// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVAULT9.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DVAULT9~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 12 even though they appear after this state */
~  !Global("Vault_Attack","GLOBAL",1)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45843 /* ~"Welcome to the Vaults of the Ninth World! How may I serve you on this fine day, Sigilian?"~ */
  IF ~  Global("Know_Vault","AR0510",0)
~ THEN REPLY #45844 /* ~"What is this place?"~ */ DO ~SetGlobal("Know_Vault","AR0510",1)
~ GOTO 2
  IF ~  Global("Know_Head","AR0510",0)
~ THEN REPLY #45845 /* ~"What are you?"~ */ DO ~SetGlobal("Know_Head","AR0510",1)
~ GOTO 3
  IF ~  GlobalLT("Warehouse_Clear","GLOBAL",4)
GlobalGT("Warehouse_Clear","GLOBAL",0)
~ THEN REPLY #45846 /* ~"I'd heard there were some problems in retrieving items from here."~ */ DO ~SetGlobal("Warehouse_Clear","GLOBAL",4)
~ GOTO 10
  IF ~~ THEN REPLY #45847 /* ~"I had a few questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #66903 /* ~"Farewell."~ */ GOTO 11
END

IF WEIGHT #2 /* Triggers after states #: 12 even though they appear after this state */
~  !Global("Vault_Attack","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45848 /* ~"Twice-welcome to the Vaults of the Ninth World! How may I serve you on this fine day, Sigilian?"~ */
  IF ~  Global("Know_Vault","AR0510",0)
~ THEN REPLY #45849 /* ~"What is this place?"~ */ DO ~SetGlobal("Know_Vault","AR0510",1)
~ GOTO 2
  IF ~  Global("Know_Head","AR0510",0)
~ THEN REPLY #45850 /* ~"What are you?"~ */ DO ~SetGlobal("Know_Head","AR0510",1)
~ GOTO 3
  IF ~~ THEN REPLY #45851 /* ~"I'd like to store something."~ */ GOTO 6
  IF ~~ THEN REPLY #45852 /* ~"I'd like to claim something."~ */ GOTO 9
  IF ~  GlobalLT("Warehouse_Clear","GLOBAL",4)
GlobalGT("Warehouse_Clear","GLOBAL",0)
~ THEN REPLY #45853 /* ~"I'd heard there were some problems in retrieving items from here."~ */ DO ~SetGlobal("Warehouse_Clear","GLOBAL",4)
~ GOTO 10
  IF ~~ THEN REPLY #45854 /* ~"Farewell."~ */ GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 7.0
  SAY #45855 /* ~"The Vaults of the Ninth World is pleased to serve as a warehouse for the Lower Ward and all the sentients of Sigil! Our motto is: 'When one world just isn't big enough!' We provide storage space for those that have little to spare. Our prices are competitive! Our service exemplary! And our courtesy to customers is known throughout the planes!"~ */
  IF ~~ THEN REPLY #45856 /* ~"What are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #45857 /* ~"Farewell."~ */ GOTO 10
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0 7.1
  SAY #45858 /* ~"I am the voice of the Vault of the Ninth World. I am here to serve you, the customer. Instruct me in what you desire!"~ */
  IF ~~ THEN REPLY #45859 /* ~"I'd like to store something."~ */ GOTO 6
  IF ~~ THEN REPLY #45860 /* ~"I'd like to claim something."~ */ GOTO 9
  IF ~~ THEN REPLY #45861 /* ~"Why is this place called the Vault of the Ninth World?"~ */ GOTO 4
  IF ~~ THEN REPLY #45862 /* ~"Is this place really as big as a world?"~ */ GOTO 5
  IF ~~ THEN REPLY #45863 /* ~"Never mind. Thanks."~ */ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 3.2 5.2 7.4
  SAY #45864 /* ~"Frankly, I have no idea! I think the owners thought that it would be a clever name or something."~ */
  IF ~~ THEN REPLY #45865 /* ~"I'd like to store something."~ */ GOTO 6
  IF ~~ THEN REPLY #45866 /* ~"I'd like to claim something."~ */ GOTO 9
  IF ~~ THEN REPLY #45867 /* ~"Is this place really as big as a world?"~ */ GOTO 5
  IF ~~ THEN REPLY #45868 /* ~"Oh. Farewell."~ */ GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 3.3 4.2 7.5
  SAY #45869 /* ~"No, it's just a marketing exaggeration. There's a lot of space here, but not that much."~ */
  IF ~~ THEN REPLY #45870 /* ~"I'd like to store something."~ */ GOTO 6
  IF ~~ THEN REPLY #45871 /* ~"I'd like to claim something."~ */ GOTO 9
  IF ~~ THEN REPLY #45872 /* ~"Why is this place called the Vault of the Ninth World?"~ */ GOTO 4
  IF ~~ THEN REPLY #45873 /* ~"Oh. Farewell."~ */ GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 1.2 3.0 4.0 5.0 7.2
  SAY #45874 /* ~"I'm sorry! We seem to be full up at the moment! Can I do anything else for you?"~ */
  IF ~~ THEN REPLY #45875 /* ~"I thought this was supposed to be a huge storehouse."~ */ GOTO 8
  IF ~~ THEN REPLY #45876 /* ~"I'd like to claim something."~ */ GOTO 9
  IF ~~ THEN REPLY #45877 /* ~"I had a few more questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #45878 /* ~"No. Farewell."~ */ GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 0.3 6.2 8.0 9.7 10.1 12.0 13.1 15.0 16.0 17.0 18.0 19.0 20.0
  SAY #45879 /* ~"Of course! What can I do for you?"~ */
  IF ~~ THEN REPLY #45880 /* ~"What is this place?"~ */ GOTO 2
  IF ~~ THEN REPLY #45881 /* ~"What are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #45882 /* ~"I'd like to store something."~ */ GOTO 6
  IF ~~ THEN REPLY #45883 /* ~"I'd like to claim something."~ */ GOTO 9
  IF ~~ THEN REPLY #45884 /* ~"Why is this place called the Vault of the Ninth World?"~ */ GOTO 4
  IF ~~ THEN REPLY #45885 /* ~"Is this place really as big as a world?"~ */ GOTO 5
  IF ~  GlobalLT("Warehouse_Clear","GLOBAL",4)
GlobalGT("Warehouse_Clear","GLOBAL",0)
~ THEN REPLY #45886 /* ~"I'd heard there were some problems in retrieving items from here."~ */ DO ~SetGlobal("Warehouse_Clear","GLOBAL",4)
~ GOTO 10
  IF ~~ THEN REPLY #45887 /* ~"Never mind. Thanks."~ */ GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #45888 /* ~"Well... yes." The head sounds a little embarrassed. "Only we ran out of space and there's something a little fishy going on around here and I don't know what. The gist of the matter is this: We don't really accept items for storage anymore."~ */
  IF ~~ THEN REPLY #45889 /* ~"Oh. Then I have a few questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #45890 /* ~"I see. Farewell, then."~ */ GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 1.3 3.1 4.1 5.1 6.1 7.3 10.0 13.0
  SAY #45891 /* ~"And what was it you were looking for, exactly?"~ */
  IF ~  Global("Vault_Gold","GLOBAL",1)
~ THEN REPLY #45892 /* ~"I was looking for a large bag of coins."~ */ GOTO 13
  IF ~  Global("Vault_Gold","GLOBAL",0)
~ THEN REPLY #45893 /* ~"I was looking for a large bag of coins."~ */ GOTO 14
  IF ~  Global("Pillow_Quest","GLOBAL",3)
~ THEN REPLY #45894 /* ~"I'm here to retrieve a pillow for Hamrys the coffin-maker."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",4)
GiveItemCreate("DrmPllw",Protagonist,1,0,0)
~ GOTO 17
  IF ~  Global("Plans_Quest","GLOBAL",3)
~ THEN REPLY #45895 /* ~"I was told that I could retrieve some plans for a tomb here."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",4)
GiveItemCreate("TombPlan",Protagonist,1,0,0)
~ GOTO 18
  IF ~  Global("Stolen_Papers","GLOBAL",3)
!Global("Evidence_Papers","GLOBAL",3)
~ THEN REPLY #45896 /* ~"I was told to tell you that I'm here for a loan."~ */ DO ~SetGlobal("Stolen_Papers","GLOBAL",4)
GiveItemCreate("LoanDoc",Protagonist,1,0,0)
~ GOTO 19
  IF ~  Global("Stolen_Papers","GLOBAL",3)
Global("Evidence_Papers","GLOBAL",3)
~ THEN REPLY #45897 /* ~"I was told to tell you that I gave Pikit the laugh."~ */ DO ~SetGlobal("Stolen_Papers","GLOBAL",4)
SetGlobal("Evidence_Papers","GLOBAL",4)
GiveItemCreate("Evidence",Protagonist,1,0,0)
GiveItemCreate("LoanDoc",Protagonist,1,0,0)
~ GOTO 20
  IF ~  Global("Stolen_Papers","GLOBAL",4)
Global("Evidence_Papers","GLOBAL",3)
~ THEN REPLY #45898 /* ~"I was told to tell you that I gave Pikit the laugh."~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",4)
GiveItemCreate("Evidence",Protagonist,1,0,0)
~ GOTO 20
  IF ~~ THEN REPLY #45899 /* ~"Nothing. I had some questions, though..."~ */ GOTO 7
  IF ~~ THEN REPLY #45900 /* ~"Nothing. Farewell."~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 0.2 1.4 2.1 7.6
  SAY #45901 /* ~"Yes. My masters are very curious what they are. I'd know, only I'm just a big spell on a head! I have no idea what's happened to all the storage space. We're open now, in case anyone asks! You should have no difficulty in getting something out. Just ask for it!"~ */
  IF ~~ THEN REPLY #45902 /* ~"All right, then. I'd like to claim something."~ */ GOTO 9
  IF ~~ THEN REPLY #45903 /* ~"I had a few questions, instead."~ */ GOTO 7
  IF ~~ THEN REPLY #45904 /* ~"Thanks, I will. Later, though. Farewell."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 0.4 1.5 3.4 4.3 5.3 6.3 7.7 8.1 9.8 10.2 12.1 13.2 15.1 16.1 17.1 18.1 19.1 20.1
  SAY #45905 /* ~"Farewell! We at the Vault of the Ninth World value your business. Please return."~ */
  IF ~~ THEN REPLY #45906 /* ~"Yeah, I'll bet."~ */ EXIT
  IF ~~ THEN REPLY #45907 /* ~"Farewell."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Vault_Attack","GLOBAL",1)
~ THEN BEGIN 12 // from:
  SAY #45908 /* ~"Pardon me. Please do not attack the head."~ */
  IF ~~ THEN REPLY #45909 /* ~"Right. I just had a few questions..."~ */ DO ~SetGlobal("Vault_Attack","GLOBAL",0)
~ GOTO 7
  IF ~~ THEN REPLY #45910 /* ~"Right. Farewell."~ */ DO ~SetGlobal("Vault_Attack","GLOBAL",0)
~ GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 9.0
  SAY #45911 /* ~"I'm sorry, sir! That item has already been claimed! Would you like to claim something else?"~ */
  IF ~~ THEN REPLY #45912 /* ~"Yes."~ */ GOTO 9
  IF ~~ THEN REPLY #45913 /* ~"No. Just answer some questions."~ */ GOTO 7
  IF ~~ THEN REPLY #45914 /* ~"No. Farewell."~ */ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY #45915 /* ~"We have a bag of coins like the one you describe, sir! I'll just need to find out one thing from you: How much was in it?"~ */
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #45916 /* ~Somehow, this guess feels right... "1,123 coins."~ */ DO ~SetGlobal("Vault_Gold","GLOBAL",1)
GivePartyGold(1123)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #45918 /* ~Somehow, this guess feels right... "1,123 coins."~ */ DO ~SetGlobal("Vault_Gold","GLOBAL",1)
GivePartyGold(1123)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #45930 /* ~Somehow, this guess feels right... "1,123 coins."~ */ DO ~SetGlobal("Vault_Gold","GLOBAL",1)
GivePartyGold(1123)
~ GOTO 15
  IF ~~ THEN REPLY #45937 /* ~Guess: "1,000 coins."~ */ GOTO 16
  IF ~~ THEN REPLY #45938 /* ~Guess: "500 coins."~ */ GOTO 16
  IF ~~ THEN REPLY #45940 /* ~Guess: "750 coins."~ */ GOTO 16
  IF ~~ THEN REPLY #45943 /* ~Guess: "331 coins."~ */ GOTO 16
  IF ~~ THEN REPLY #45945 /* ~Guess: "2,112 coins."~ */ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 14.2
  SAY #45917 /* ~"Here you go, sir! Thanks for storing your goods at Vault of the Ninth World! Can I get you anything else?"~ */
  IF ~~ THEN REPLY #45984 /* ~"Answer a few more questions for me..."~ */ GOTO 7
  IF ~~ THEN REPLY #45986 /* ~"No, thanks. Farewell."~ */ GOTO 11
END

IF ~~ THEN BEGIN 16 // from: 14.3 14.4 14.5 14.6 14.7
  SAY #45948 /* ~"I'm sorry, sir! That must not be your bag of wealth! Can I get you something else?"~ */
  IF ~~ THEN REPLY #45950 /* ~"Answer a few more questions for me..."~ */ GOTO 7
  IF ~~ THEN REPLY #45952 /* ~"No, thanks. Farewell."~ */ GOTO 11
END

IF ~~ THEN BEGIN 17 // from: 9.2
  SAY #45954 /* ~"A pillow? I could certainly use a pillow... a big STONE pillow! Here's your pillow, Master Hamrys, and good luck sleeping with it! Can I get you anything else?"~ */
  IF ~~ THEN REPLY #45957 /* ~"Answer a few more questions for me..."~ */ GOTO 7
  IF ~~ THEN REPLY #45959 /* ~"No, thanks. Farewell."~ */ GOTO 11
END

IF ~~ THEN BEGIN 18 // from: 9.3
  SAY #45962 /* ~"Plans for a tomb? You don't look dead, sir, not that it's any of my business if you are! Here are your plans, sir! Can I get you anything else?"~ */
  IF ~~ THEN REPLY #45965 /* ~"Answer a few more questions for me..."~ */ GOTO 7
  IF ~~ THEN REPLY #45978 /* ~"No, thanks. Farewell."~ */ GOTO 11
END

IF ~~ THEN BEGIN 19 // from: 9.4
  SAY #45990 /* ~"Ooh! One of my secret passwords! Here are the papers you want, sir! Thank you! What else can I do for you?"~ */
  IF ~~ THEN REPLY #45991 /* ~"Nothing. Farewell."~ */ GOTO 7
  IF ~~ THEN REPLY #45992 /* ~"No, thanks. Farewell."~ */ GOTO 11
END

IF ~~ THEN BEGIN 20 // from: 9.5 9.6
  SAY #45993 /* ~"I certainly hope so, sir, whatever that means! I'm just a big dumb rock head! Here are your papers, sir, and here! Thank you! What can I do for you?"~ */
  IF ~~ THEN REPLY #45994 /* ~"Answer a few more questions for me..."~ */ GOTO 7
  IF ~~ THEN REPLY #45995 /* ~"Nothing. Farewell."~ */ GOTO 11
END
