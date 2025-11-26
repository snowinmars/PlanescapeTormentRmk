// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPESTAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DPESTAL~

IF ~  Global("Evil_Book_Spoken","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #26924 /* ~As you touch this book, you hear a voice: "I greet thee, master. How may this humble tome serve you?"~ */
  IF ~~ THEN REPLY #26926 /* ~"You can talk?"~ */ DO ~SetGlobal("Evil_Book_Spoken","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #26927 /* ~"You can't. Stop talking to me."~ */ DO ~SetGlobal("Evil_Book_Spoken","GLOBAL",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.3 4.19 6.2 7.2 8.2 9.2 10.2 11.2 12.2 13.2 14.2 15.2 16.2 17.2 18.2 19.2 20.2 21.2 22.1 26.1 27.1 54.3
  SAY #26928 /* ~"As you wish, master. Merely speak the word to me and I shall assist you in any way possible."~ */
  IF ~~ THEN REPLY #26929 /* ~"Actually, tell me what you can do."~ */ GOTO 3
  IF ~~ THEN REPLY #26930 /* ~"Fine. Now quiet yourself."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #26931 /* ~"That I can, master, in many different languages. Only you should take care that none see us conversing, for they cannot hear me. And, master, speech is but one of my powers."~ */
  IF ~~ THEN REPLY #26932 /* ~"What can you do? What are your powers?"~ */ GOTO 3
  IF ~~ THEN REPLY #26933 /* ~"How did Mantuok come to possess you?"~ */ GOTO 5
  IF ~~ THEN REPLY #26934 /* ~"Tell me about yourself."~ */ GOTO 6
  IF ~~ THEN REPLY #26935 /* ~"That's enough for now."~ */ GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 4.0 5.0
  SAY #26936 /* ~"I can grant you abilities that will allow you greater latitude in life's vicissitudes, master, and I can offer advice to you."~ */
  IF ~~ THEN REPLY #26937 /* ~"What abilities do you mean?"~ */ GOTO 23
  IF ~  Global("Book_Advice","GLOBAL",0)
~ THEN REPLY #26938 /* ~"Give me some advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Book_Advice","GLOBAL",1)
~ THEN REPLY #26939 /* ~"Give me some advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 8
  IF ~  Global("Book_Advice","GLOBAL",2)
~ THEN REPLY #26940 /* ~"Give me some advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_1","GLOBALGood",-1)
~ GOTO 9
  IF ~  Global("Book_Advice","GLOBAL",3)
~ THEN REPLY #26941 /* ~"Give me some advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 10
  IF ~  Global("Book_Advice","GLOBAL",4)
~ THEN REPLY #26942 /* ~"Give me some advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 11
  IF ~  Global("Book_Advice","GLOBAL",5)
~ THEN REPLY #26943 /* ~"Give me some advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_2","GLOBALGood",-1)
~ GOTO 12
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #26944 /* ~"Give me some advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Book_Advice","GLOBAL",7)
~ THEN REPLY #26945 /* ~"Give me some advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 14
  IF ~  Global("Book_Advice","GLOBAL",8)
~ THEN REPLY #26946 /* ~"Give me some advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_3","GLOBALGood",-1)
~ GOTO 15
  IF ~  Global("Book_Advice","GLOBAL",9)
~ THEN REPLY #26947 /* ~"Give me some advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 16
  IF ~  Global("Book_Advice","GLOBAL",10)
~ THEN REPLY #26948 /* ~"Give me some advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 17
  IF ~  Global("Book_Advice","GLOBAL",11)
~ THEN REPLY #26949 /* ~"Give me some advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_4","GLOBALGood",-1)
~ GOTO 18
  IF ~  Global("Book_Advice","GLOBAL",12)
~ THEN REPLY #26950 /* ~"Give me some advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 19
  IF ~  Global("Book_Advice","GLOBAL",13)
~ THEN REPLY #26951 /* ~"Give me some advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 20
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #26952 /* ~"Give me some advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-3)
~ GOTO 21
  IF ~  Global("Book_Advice","GLOBAL",15)
~ THEN REPLY #26953 /* ~"Give me some advice."~ */ GOTO 22
  IF ~~ THEN REPLY #26954 /* ~"Forget it. Answer some other questions for me."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.17 5.1 6.1 7.1 8.1 9.1 10.1 11.1 12.1 13.1 14.1 15.1 16.1 17.1 18.1 19.1 20.1 21.1 22.0 26.0 27.0
  SAY #26955 /* ~"What do you wish to know, master?"~ */
  IF ~~ THEN REPLY #26956 /* ~"What can you do? What are your powers?"~ */ GOTO 3
  IF ~~ THEN REPLY #26957 /* ~"How did Mantuok come to possess you?"~ */ GOTO 5
  IF ~~ THEN REPLY #26958 /* ~"Tell me about yourself."~ */ GOTO 6
  IF ~  Global("Book_Advice","GLOBAL",0)
~ THEN REPLY #26959 /* ~"Give me some advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Book_Advice","GLOBAL",1)
~ THEN REPLY #26960 /* ~"Give me some advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 8
  IF ~  Global("Book_Advice","GLOBAL",2)
~ THEN REPLY #26961 /* ~"Give me some advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_1","GLOBALGood",-1)
~ GOTO 9
  IF ~  Global("Book_Advice","GLOBAL",3)
~ THEN REPLY #26962 /* ~"Give me some advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 10
  IF ~  Global("Book_Advice","GLOBAL",4)
~ THEN REPLY #26963 /* ~"Give me some advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 11
  IF ~  Global("Book_Advice","GLOBAL",5)
~ THEN REPLY #26964 /* ~"Give me some advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_2","GLOBALGood",-1)
~ GOTO 12
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #26965 /* ~"Give me some advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Book_Advice","GLOBAL",7)
~ THEN REPLY #26966 /* ~"Give me some advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 14
  IF ~  Global("Book_Advice","GLOBAL",8)
~ THEN REPLY #26967 /* ~"Give me some advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_3","GLOBALGood",-1)
~ GOTO 15
  IF ~  Global("Book_Advice","GLOBAL",9)
~ THEN REPLY #26968 /* ~"Give me some advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 16
  IF ~  Global("Book_Advice","GLOBAL",10)
~ THEN REPLY #26969 /* ~"Give me some advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 17
  IF ~  Global("Book_Advice","GLOBAL",11)
~ THEN REPLY #26970 /* ~"Give me some advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_4","GLOBALGood",-1)
~ GOTO 18
  IF ~  Global("Book_Advice","GLOBAL",12)
~ THEN REPLY #26971 /* ~"Give me some advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 19
  IF ~  Global("Book_Advice","GLOBAL",13)
~ THEN REPLY #26972 /* ~"Give me some advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 20
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #26973 /* ~"Give me some advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-3)
~ GOTO 21
  IF ~  Global("Book_Advice","GLOBAL",15)
~ THEN REPLY #26974 /* ~"Give me some advice."~ */ GOTO 22
  IF ~~ THEN REPLY #26975 /* ~"That's enough for now."~ */ GOTO 1
END

IF ~~ THEN BEGIN 5 // from: 2.1 4.1
  SAY #26976 /* ~"The diseased rat-mage unearthed me in the catacombs, my master. He pried me from the grip of my former master, now long since dead. He brought me to his nest so that he might learn from me. His power was limited, however... it was difficult to speak to him, and he understood little of my teachings."~ */
  IF ~~ THEN REPLY #26977 /* ~"Tell me of your powers."~ */ GOTO 3
  IF ~~ THEN REPLY #26978 /* ~"I see. Answer some other questions for me."~ */ GOTO 4
  IF ~~ THEN REPLY #26979 /* ~"True. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 4.2
  SAY #26980 /* ~"The question you ask is not a simple one, my master, but your servant shall seek to answer it as best it can. I am a codex of moments-now-forgotten, ideas-now-lost, and thoughts of other times and other worlds. Within my pages lies the lore of forgotten civilizations. In essence, my master, and this is the only thing of import: within my pages lie POWER. This power can be yours... my master."~ */
  IF ~~ THEN REPLY #26981 /* ~"Tell me of your powers."~ */ GOTO 23
  IF ~~ THEN REPLY #26982 /* ~"Not interested right now. Answer some other questions for me, instead."~ */ GOTO 4
  IF ~~ THEN REPLY #26983 /* ~"Not interested. Farewell, book."~ */ GOTO 1
END

IF ~~ THEN BEGIN 7 // from: 3.1 4.3
  SAY #26984 /* ~"I bestow this advice, my master: Be wary of those you keep close to you. Never take them fully into your confidence, and never dilute your strength by sharing it. Many emperors I have known have done such, and I do not wish you to suffer the same fate."~ */
  IF ~  Global("Book_Advice","GLOBAL",1)
~ THEN REPLY #26985 /* ~"Give me some more advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27016 /* ~The book advised me: 'Be wary of those you keep close to you. Never take them fully into your confidence, and never dilute your strength by sharing it. Many emperors I have known have done such, and I do not wish you to suffer the same fate.'~ */ GOTO 8
  IF ~~ THEN REPLY #26986 /* ~"Very well. I had some other questions."~ */ JOURNAL #27016 /* ~The book advised me: 'Be wary of those you keep close to you. Never take them fully into your confidence, and never dilute your strength by sharing it. Many emperors I have known have done such, and I do not wish you to suffer the same fate.'~ */ GOTO 4
  IF ~~ THEN REPLY #26987 /* ~"That's enough."~ */ JOURNAL #27016 /* ~The book advised me: 'Be wary of those you keep close to you. Never take them fully into your confidence, and never dilute your strength by sharing it. Many emperors I have known have done such, and I do not wish you to suffer the same fate.'~ */ GOTO 1
END

IF ~~ THEN BEGIN 8 // from: 3.2 4.4 7.0
  SAY #26988 /* ~"Then I bestow this advice, my master. If they claim friendship, then let them prove themselves. Words carry little weight compared to action. If friends they be, then they should be willing to die for you."~ */
  IF ~  Global("Book_Advice","GLOBAL",2)
~ THEN REPLY #26989 /* ~"Give me some more advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_1","GLOBALGood",-1)
~ JOURNAL #27017 /* ~The book advised me: 'If they claim friendship, then let them prove themselves. Words carry little weight compared to action. If friends they be, then they should be willing to die for you.'~ */ GOTO 9
  IF ~~ THEN REPLY #26990 /* ~"Very well. I had some other questions."~ */ JOURNAL #27017 /* ~The book advised me: 'If they claim friendship, then let them prove themselves. Words carry little weight compared to action. If friends they be, then they should be willing to die for you.'~ */ GOTO 4
  IF ~~ THEN REPLY #26991 /* ~"That's enough."~ */ JOURNAL #27017 /* ~The book advised me: 'If they claim friendship, then let them prove themselves. Words carry little weight compared to action. If friends they be, then they should be willing to die for you.'~ */ GOTO 1
END

IF ~~ THEN BEGIN 9 // from: 3.3 4.5 8.0
  SAY #26992 /* ~You feel a slight tightening in your chest as the book speaks: "Then I bestow this advice, my master. Show no weakness, do not admit error, do not show hesitation. These things tell others that you are uncertain, a stone that is unbalanced and may be toppled."~ */
  IF ~  Global("Book_Advice","GLOBAL",3)
~ THEN REPLY #26993 /* ~"Give me some more advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27018 /* ~The book advised me: 'Show no weakness, do not admit error, do not show hesitation. These things tell others that you are uncertain, a stone that is unbalanced and may be toppled.'~ */ GOTO 10
  IF ~~ THEN REPLY #26994 /* ~"Very well. I had some other questions."~ */ JOURNAL #27018 /* ~The book advised me: 'Show no weakness, do not admit error, do not show hesitation. These things tell others that you are uncertain, a stone that is unbalanced and may be toppled.'~ */ GOTO 4
  IF ~~ THEN REPLY #26995 /* ~"That's enough."~ */ JOURNAL #27018 /* ~The book advised me: 'Show no weakness, do not admit error, do not show hesitation. These things tell others that you are uncertain, a stone that is unbalanced and may be toppled.'~ */ GOTO 1
END

IF ~~ THEN BEGIN 10 // from: 3.4 4.6 9.0
  SAY #26996 /* ~"Then I bestow this advice, my master. Beware mercy. A turned back is no defense against an assassin's knife."~ */
  IF ~  Global("Book_Advice","GLOBAL",4)
~ THEN REPLY #26997 /* ~"Give me some more advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27019 /* ~The book advised me: 'Beware mercy. A turned back is no defense against an assassin's knife.'~ */ GOTO 11
  IF ~~ THEN REPLY #26998 /* ~"Very well. I had some other questions."~ */ JOURNAL #27019 /* ~The book advised me: 'Beware mercy. A turned back is no defense against an assassin's knife.'~ */ GOTO 4
  IF ~~ THEN REPLY #26999 /* ~"That's enough."~ */ JOURNAL #27019 /* ~The book advised me: 'Beware mercy. A turned back is no defense against an assassin's knife.'~ */ GOTO 1
END

IF ~~ THEN BEGIN 11 // from: 3.5 4.7 10.0
  SAY #27000 /* ~"Then I bestow this advice, my master. Beware the common view of love. Love must often be cruel in order so that it may rise above the merely sentimental."~ */
  IF ~  Global("Book_Advice","GLOBAL",5)
~ THEN REPLY #27001 /* ~"Give me some more advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_2","GLOBALGood",-1)
~ JOURNAL #27020 /* ~The book advised me: 'Beware the common view of love. Love must often be cruel in order so that it may rise above the merely sentimental.'~ */ GOTO 12
  IF ~~ THEN REPLY #27002 /* ~"Very well. I had some other questions."~ */ JOURNAL #27020 /* ~The book advised me: 'Beware the common view of love. Love must often be cruel in order so that it may rise above the merely sentimental.'~ */ GOTO 4
  IF ~~ THEN REPLY #27003 /* ~"That's enough."~ */ JOURNAL #27020 /* ~The book advised me: 'Beware the common view of love. Love must often be cruel in order so that it may rise above the merely sentimental.'~ */ GOTO 1
END

IF ~~ THEN BEGIN 12 // from: 3.6 4.8 11.0
  SAY #27004 /* ~You feel a faint sneer curl up the corner of your mouth. You quickly repress it. "Then I bestow this advice, my master: Separate yourself from small-minded fools and the weak by recognizing that you have a destiny. This alone gives you authority to tread where others would fear to go."~ */
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #27005 /* ~"Give me some more advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27021 /* ~The book advised me: 'Separate yourself from small-minded fools and the weak by recognizing that you have a destiny. This alone gives you authority to tread where others would fear to go.'~ */ GOTO 13
  IF ~~ THEN REPLY #27006 /* ~"Very well. I had some other questions."~ */ JOURNAL #27021 /* ~The book advised me: 'Separate yourself from small-minded fools and the weak by recognizing that you have a destiny. This alone gives you authority to tread where others would fear to go.'~ */ GOTO 4
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #27007 /* ~"That's enough."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27021 /* ~The book advised me: 'Separate yourself from small-minded fools and the weak by recognizing that you have a destiny. This alone gives you authority to tread where others would fear to go.'~ */ GOTO 1
END

IF ~~ THEN BEGIN 13 // from: 3.7 4.9 12.0
  SAY #27008 /* ~"Then I bestow this advice, my master. There are two secrets to becoming great. One is never to reveal all that you know."~ */
  IF ~  Global("Book_Advice","GLOBAL",7)
~ THEN REPLY #27009 /* ~"Give me some more advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27022 /* ~The book advised me: 'There are two secrets to becoming great. One is never to reveal all that you know.'~ */ GOTO 14
  IF ~~ THEN REPLY #27010 /* ~"Very well. I had some other questions."~ */ JOURNAL #27022 /* ~The book advised me: 'There are two secrets to becoming great. One is never to reveal all that you know.'~ */ GOTO 4
  IF ~~ THEN REPLY #27011 /* ~"That's enough."~ */ JOURNAL #27022 /* ~The book advised me: 'There are two secrets to becoming great. One is never to reveal all that you know.'~ */ GOTO 1
END

IF ~~ THEN BEGIN 14 // from: 3.8 4.10 13.0
  SAY #27012 /* ~"Then I bestow this advice, my master. To become powerful, you must be willing to sacrifice: whether it is parts of yourself or things precious to you. Power is a bargain: One must give in order to receive."~ */
  IF ~  Global("Book_Advice","GLOBAL",8)
~ THEN REPLY #27013 /* ~"Give me some more advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_3","GLOBALGood",-1)
~ JOURNAL #27023 /* ~The book advised me: 'To become powerful, you must be willing to sacrifice: whether it is parts of yourself or things precious to you. Power is a bargain: One must give in order to receive.'~ */ GOTO 15
  IF ~~ THEN REPLY #27014 /* ~"Very well. I had some other questions."~ */ JOURNAL #27022 /* ~The book advised me: 'There are two secrets to becoming great. One is never to reveal all that you know.'~ */ GOTO 4
  IF ~~ THEN REPLY #27015 /* ~"That's enough."~ */ JOURNAL #27022 /* ~The book advised me: 'There are two secrets to becoming great. One is never to reveal all that you know.'~ */ GOTO 1
END

IF ~~ THEN BEGIN 15 // from: 3.9 4.11 14.0
  SAY #27024 /* ~Your blood seems to move more sluggishly within your veins as the book speaks. "Then I bestow this advice, my master. Honor and virtue are concepts that kill men and kill the spirit. They are only abstracts that drive men to strangeness and death. Be true to yourself and obey only your own will."~ */
  IF ~  Global("Book_Advice","GLOBAL",9)
~ THEN REPLY #27025 /* ~"Give me some more advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27028 /* ~The book advised me: 'Honor and virtue are concepts that kill men and kill the spirit. They are only abstracts that drive men to strangeness and death. Be true to yourself and obey only your own will.'~ */ GOTO 16
  IF ~~ THEN REPLY #27026 /* ~"Very well. I had some other questions."~ */ GOTO 4
  IF ~~ THEN REPLY #27027 /* ~"That's enough."~ */ GOTO 1
END

IF ~~ THEN BEGIN 16 // from: 3.10 4.12 15.0
  SAY #27029 /* ~"Then I bestow this advice, my master. Do not suffer one who has hurt you to live. To do so is an open admission of weakness."~ */
  IF ~  Global("Book_Advice","GLOBAL",10)
~ THEN REPLY #27030 /* ~"Give me some more advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27033 /* ~The book advised me: 'Do not suffer one who has hurt you to live. To do so is an open admission of weakness.'~ */ GOTO 17
  IF ~~ THEN REPLY #27031 /* ~"Very well. I had some other questions."~ */ GOTO 4
  IF ~~ THEN REPLY #27032 /* ~"That's enough."~ */ GOTO 1
END

IF ~~ THEN BEGIN 17 // from: 3.11 4.13 16.0
  SAY #27034 /* ~"Then I bestow this advice, my master. The soul of man is a sea of emotions. Often man struggles to bring order to these emotions, but it is a false order. Man's natural state is chaos, and it is a state that should be surrendered to."~ */
  IF ~  Global("Book_Advice","GLOBAL",11)
~ THEN REPLY #27035 /* ~"Give me some more advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_4","GLOBALGood",-1)
~ JOURNAL #27038 /* ~The book advised me: 'The soul of man is a sea of emotions. Often man struggles to bring order to these emotions, but it is a false order. Man's natural state is chaos, and it is a state that should be surrendered to.'~ */ GOTO 18
  IF ~~ THEN REPLY #27036 /* ~"Very well. I had some other questions."~ */ GOTO 4
  IF ~~ THEN REPLY #27037 /* ~"That's enough."~ */ GOTO 1
END

IF ~~ THEN BEGIN 18 // from: 3.12 4.14 17.0
  SAY #27039 /* ~"Then I bestow this advice, my master. Know the meaning of mercy, use it to your advantage... but do not practice it."~ */
  IF ~  Global("Book_Advice","GLOBAL",12)
~ THEN REPLY #27040 /* ~"Give me some more advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27043 /* ~The book advised me: 'Know the meaning of mercy, use it to your advantage... but do not practice it.'~ */ GOTO 19
  IF ~~ THEN REPLY #27041 /* ~"Very well. I had some other questions."~ */ GOTO 4
  IF ~~ THEN REPLY #27042 /* ~"That's enough."~ */ GOTO 1
END

IF ~~ THEN BEGIN 19 // from: 3.13 4.15 18.0
  SAY #27044 /* ~"Then I bestow this advice, my master. Nurture fear in others, for only fear rules men. Nothing else leaves deeper scars."~ */
  IF ~  Global("Book_Advice","GLOBAL",13)
~ THEN REPLY #27045 /* ~"Give me some more advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27048 /* ~The book advised me: 'Nurture fear in others, for only fear rules men. Nothing else leaves deeper scars.'~ */ GOTO 20
  IF ~~ THEN REPLY #27046 /* ~"Very well. I had some other questions."~ */ GOTO 4
  IF ~~ THEN REPLY #27047 /* ~"That's enough."~ */ GOTO 1
END

IF ~~ THEN BEGIN 20 // from: 3.14 4.16 19.0
  SAY #27049 /* ~"Then I bestow this advice, my master. Extend a smile and the hand of friendship to your enemies. When they clasp your hand, strike them with the dagger in your other hand, else they will surely do the same to you."~ */
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #27050 /* ~"Give me some more advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-3)
~ JOURNAL #27053 /* ~The book advised me: 'Extend a smile and the hand of friendship to your enemies. When they clasp your hand, strike them with the dagger in your other hand, else they will surely do the same to you.'~ */ GOTO 21
  IF ~~ THEN REPLY #27051 /* ~"Very well. I had some other questions."~ */ GOTO 4
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #27052 /* ~"That's enough."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-3)
~ GOTO 1
END

IF ~~ THEN BEGIN 21 // from: 3.15 4.17 20.0
  SAY #27054 /* ~As the book speaks these words, you feel a chill weight settle on your heart. You feel somehow tainted: "These are my last words of advice, my master. Weigh them carefully. Remember that you can expunge anything you find undesirable. You need only have the will."~ */
  IF ~  Global("Book_Advice","GLOBAL",15)
~ THEN REPLY #27055 /* ~"Give me some more advice."~ */ JOURNAL #27058 /* ~The book advised me: 'Remember that you can expunge anything you find undesirable. You need only have the will.'~ */ GOTO 22
  IF ~~ THEN REPLY #27056 /* ~"Very well. I had some other questions."~ */ GOTO 4
  IF ~~ THEN REPLY #27057 /* ~"That's enough."~ */ GOTO 1
END

IF ~~ THEN BEGIN 22 // from: 3.16 4.18 21.0
  SAY #27059 /* ~"I regret, master, that I can speak no more words of wisdom to you. You have received an education in the phrases I have given you; reflect on them."~ */
  IF ~~ THEN REPLY #27060 /* ~"Very well. I had some other questions."~ */ GOTO 4
  IF ~~ THEN REPLY #27061 /* ~"That's enough."~ */ GOTO 1
END

IF ~~ THEN BEGIN 23 // from: 3.0 6.0
  SAY #27062 /* ~"These are powers, my master, that can improve your life immeasurably. Unfortunately, the laws that bind me... they demand a small service in recompense for these powers."~ */
  IF ~~ THEN REPLY #27063 /* ~"A small service? Like what?"~ */ GOTO 24
  IF ~~ THEN REPLY #27064 /* ~"Then I wish nothing."~ */ GOTO 27
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #27065 /* ~"The service required is a trifling one, my master. I would barely mention it if it were not for the sake of the laws that bind me to these pages..." The book pauses. "To unlock my power, you must sacrifice but a small bit of yourself, my master. You must spill blood upon the first of my pages. This act will serve to strengthen the chain between us and allow me to help you reach your full potential. It is a small price to pay for the spells that will come to be at your disposal."~ */
  IF ~~ THEN REPLY #27066 /* ~"All right. Here."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Book_6","GLOBALGood",-1)
SetGlobal("E_Book","GLOBAL",1)
GiveItemCreate("SPWI115",Protagonist,1,1,0)
~ JOURNAL #27068 /* ~This strange book I have picked up has asked me to spill some of my blood onto its pages. I have done so, and gained a spell. It has promised me more power, as well.~ */ GOTO 25
  IF ~~ THEN REPLY #27067 /* ~"No."~ */ GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #27069 /* ~You cut yourself and allow a few drops of blood to drip upon the page. A strange chill settles in your bones, and you feel empty and hurt. At the same time, there is a feeling of triumph: You have learned a new spell: Blindness. "This is your power now... master. Know that this is but the first power that lies in my pages."~ */
  IF ~~ THEN REPLY #27070 /* ~"Tell me of these other powers."~ */ GOTO 29
  IF ~~ THEN REPLY #27071 /* ~"Answer some more questions for me."~ */ GOTO 35
  IF ~~ THEN REPLY #27072 /* ~"I want some advice from you."~ */ GOTO 36
  IF ~~ THEN REPLY #27073 /* ~"I need nothing more right now."~ */ GOTO 28
END

IF ~  Global("Evil_Book_Spoken","GLOBAL",1)
Global("E_Book","GLOBAL",0)
~ THEN BEGIN 26 // from:
  SAY #27074 /* ~"Master, how may I serve your needs? Do you need your curiosity assuaged?"~ */
  IF ~~ THEN REPLY #27075 /* ~"Yes. Answer some questions for me."~ */ GOTO 4
  IF ~~ THEN REPLY #27076 /* ~"No."~ */ GOTO 1
END

IF ~~ THEN BEGIN 27 // from: 23.1 24.1
  SAY #27077 /* ~"It is but a small sacrifice, master, for a great gain... but it is your choice. The offer remains open, master."~ */
  IF ~~ THEN REPLY #27078 /* ~"Good. Answer some other questions for me."~ */ JOURNAL #27080 /* ~This strange book I have found has asked me to give up a small piece of myself in exchange for power. I declined. The option is still open, however.~ */ GOTO 4
  IF ~~ THEN REPLY #27079 /* ~"Good. Farewell."~ */ JOURNAL #27080 /* ~This strange book I have found has asked me to give up a small piece of myself in exchange for power. I declined. The option is still open, however.~ */ GOTO 1
END

IF ~~ THEN BEGIN 28 // from: 25.3
  SAY #27081 /* ~"Then remember that you may find yourself wishing greater power later, and that I will be waiting for you... master."~ */
  IF ~~ THEN REPLY #27082 /* ~"I'll do that. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 25.0 35.3 53.0 54.0
  SAY #27083 /* ~The voice of the Book seems saddened. "Unfortunately, master, the laws that bind me demand a greater sacrifice in return for greater power. I would grant these powers to you freely, but as you can see, I am bound."~ */
  IF ~~ THEN REPLY #27084 /* ~"What is the sacrifice?"~ */ DO ~SetGlobal("E_Book","GLOBAL",2)
~ GOTO 30
  IF ~~ THEN REPLY #27085 /* ~"Forget it, then."~ */ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 29.0 32.0 35.4 53.1 54.1
  SAY #27086 /* ~"The second sacrifice is that you sell one of your companions into durance, bondage, slavery. This will signify the binding between you and the power - your companion represents the power placed at your disposal. There are those in the Clerk's Ward, I am given to understand, who will aid you in this quest. Seek out Vrischika the importer."~ */
  IF ~~ THEN REPLY #27087 /* ~"I'll think about it. Give me some advice, will you?"~ */ JOURNAL #27092 /* ~The book has offered me another spell in exchange for selling one of my companions into slavery. I am to seek out *Vrischika the Importer,* in the Clerk's Ward, if I wish to see this power.~ */ GOTO 36
  IF ~~ THEN REPLY #27088 /* ~"I'll do it. Give me some advice, will you?"~ */ DO ~SetGlobal("E_Book","GLOBAL",3)
~ JOURNAL #27093 /* ~The book has offered me another spell in exchange for selling one of my companions into slavery. I am to seek out Vrischika the Importer, if I wish to see this power. I have agreed to do it.~ */ GOTO 36
  IF ~~ THEN REPLY #27089 /* ~"I'll think about it. I need some more answers from you."~ */ JOURNAL #27092 /* ~The book has offered me another spell in exchange for selling one of my companions into slavery. I am to seek out *Vrischika the Importer,* in the Clerk's Ward, if I wish to see this power.~ */ GOTO 35
  IF ~~ THEN REPLY #27090 /* ~"I'll do it. But I need some more answers from you first."~ */ DO ~SetGlobal("E_Book","GLOBAL",3)
~ JOURNAL #27093 /* ~The book has offered me another spell in exchange for selling one of my companions into slavery. I am to seek out Vrischika the Importer, if I wish to see this power. I have agreed to do it.~ */ GOTO 35
  IF ~~ THEN REPLY #27091 /* ~"I'll think about it. Farewell."~ */ JOURNAL #27092 /* ~The book has offered me another spell in exchange for selling one of my companions into slavery. I am to seek out *Vrischika the Importer,* in the Clerk's Ward, if I wish to see this power.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #27094 /* ~"I am saddened that you do not think my powers worth such a small price. Do not let doubt and confusion shackle you, master... but I speak out of turn. Remember that the offer remains open to you."~ */
  IF ~~ THEN REPLY #27095 /* ~"I'll do it. Give me some advice, will you?"~ */ DO ~SetGlobal("E_Book","GLOBAL",3)
~ GOTO 36
  IF ~~ THEN REPLY #27096 /* ~"I'll think about it. I need some more answers from you."~ */ GOTO 35
  IF ~~ THEN REPLY #27097 /* ~"I'll think about it. Farewell."~ */ EXIT
END

IF ~  Global("E_Book","GLOBAL",1)
~ THEN BEGIN 32 // from:
  SAY #27098 /* ~"Master. Have you decided that perhaps you wish to continue your education? The offer of greater insight and ability remains open to you."~ */
  IF ~~ THEN REPLY #27099 /* ~"Tell me what I have to do."~ */ DO ~SetGlobal("E_Book","GLOBAL",2)
~ GOTO 30
  IF ~~ THEN REPLY #27100 /* ~"Not yet. Answer some other questions for me."~ */ GOTO 35
  IF ~~ THEN REPLY #27101 /* ~"Not yet. I want some advice from you."~ */ GOTO 36
  IF ~~ THEN REPLY #27102 /* ~"No. Farewell."~ */ EXIT
END

IF ~  GlobalGT("E_Book","GLOBAL",1)
GlobalLT("E_Book","GLOBAL",4)
~ THEN BEGIN 33 // from:
  SAY #27103 /* ~"Master. Have you decided that perhaps you wish to continue your education? The offer of greater insight and ability remains open to you if you will but complete the second sacrifice."~ */
  IF ~~ THEN REPLY #27104 /* ~"All right, I'll do it. Now answer some questions for me."~ */ DO ~SetGlobal("E_Book","GLOBAL",3)
~ GOTO 35
  IF ~~ THEN REPLY #27105 /* ~"Sounds fair. I'll do it. I need some more advice from you."~ */ DO ~SetGlobal("E_Book","GLOBAL",3)
~ GOTO 36
  IF ~~ THEN REPLY #27106 /* ~"I'll think about it. Give me some advice."~ */ GOTO 36
  IF ~~ THEN REPLY #27107 /* ~"I had some questions I needed answered first."~ */ GOTO 35
  IF ~~ THEN REPLY #27108 /* ~"Not right now. Farewell."~ */ EXIT
END

IF ~  Global("E_Book","GLOBAL",4)
~ THEN BEGIN 34 // from:
  SAY #27109 /* ~"Master, have you completed the second sacrifice? There is an air about you that says you have. You have done well; you are a swift learner. Listen to these words and learn still more." The Book speaks some unintelligible syllables and you feel a burning sensation within your chest. You now know the spell Adder's Kiss.~ */
  IF ~~ THEN REPLY #27110 /* ~"Do you have more to teach me, Book?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Book_7","GLOBALGood",-3)
SetGlobal("E_Book","GLOBAL",5)
GiveItemCreate("SPWI201",Protagonist,1,1,0)
~ JOURNAL #27112 /* ~The book has given me the spell Adder's Kiss, in exchange for selling one of my companions into slavery.~ */ GOTO 55
  IF ~~ THEN REPLY #27111 /* ~"My thanks. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Book_7","GLOBALGood",-3)
SetGlobal("E_Book","GLOBAL",5)
GiveItemCreate("SPWI201",Protagonist,1,1,0)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 25.1 30.2 30.3 31.1 32.1 33.0 33.3 36.16 37.1 38.1 39.1 40.1 41.1 42.1 43.1 44.1 45.1 46.1 47.1 48.1 49.1 50.1 51.1 52.0 53.2 54.2
  SAY #27113 /* ~"You require answers?"~ */
  IF ~~ THEN REPLY #27114 /* ~"How did Mantuok come to possess you?"~ */ GOTO 53
  IF ~~ THEN REPLY #27115 /* ~"Tell me about yourself."~ */ GOTO 54
  IF ~~ THEN REPLY #27116 /* ~"Can you give me advice?" ~ */ GOTO 36
  IF ~  Global("E_Book","GLOBAL",1)
~ THEN REPLY #27117 /* ~"Do you have more powers for me?"~ */ GOTO 29
  IF ~  GlobalGT("E_Book","GLOBAL",1)
~ THEN REPLY #27118 /* ~"What was the sacrifice I had to make for the new power?"~ */ GOTO 30
  IF ~~ THEN REPLY #27119 /* ~"No more. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 25.2 30.0 30.1 31.0 32.2 33.1 33.2 35.2
  SAY #27120 /* ~"You wish my knowledge... master?"~ */
  IF ~  Global("Book_Advice","GLOBAL",0)
~ THEN REPLY #27121 /* ~"Yes."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 37
  IF ~  Global("Book_Advice","GLOBAL",1)
~ THEN REPLY #27122 /* ~"Yes."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 38
  IF ~  Global("Book_Advice","GLOBAL",2)
~ THEN REPLY #27123 /* ~"Yes."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_1","GLOBALGood",-1)
~ GOTO 39
  IF ~  Global("Book_Advice","GLOBAL",3)
~ THEN REPLY #27124 /* ~"Yes."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 40
  IF ~  Global("Book_Advice","GLOBAL",4)
~ THEN REPLY #27125 /* ~"Yes."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 41
  IF ~  Global("Book_Advice","GLOBAL",5)
~ THEN REPLY #27126 /* ~"Yes."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_2","GLOBALGood",-1)
~ GOTO 42
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #27127 /* ~"Yes."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 43
  IF ~  Global("Book_Advice","GLOBAL",7)
~ THEN REPLY #27128 /* ~"Yes."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 44
  IF ~  Global("Book_Advice","GLOBAL",8)
~ THEN REPLY #27129 /* ~"Yes."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_3","GLOBALGood",-1)
~ GOTO 45
  IF ~  Global("Book_Advice","GLOBAL",9)
~ THEN REPLY #27130 /* ~"Yes."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 46
  IF ~  Global("Book_Advice","GLOBAL",10)
~ THEN REPLY #27131 /* ~"Yes."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 47
  IF ~  Global("Book_Advice","GLOBAL",11)
~ THEN REPLY #27132 /* ~"Yes."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_4","GLOBALGood",-1)
~ GOTO 48
  IF ~  Global("Book_Advice","GLOBAL",12)
~ THEN REPLY #27133 /* ~"Yes."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 49
  IF ~  Global("Book_Advice","GLOBAL",13)
~ THEN REPLY #27134 /* ~"Yes."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 50
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #27135 /* ~"Yes."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-5)
~ GOTO 51
  IF ~  Global("Book_Advice","GLOBAL",15)
~ THEN REPLY #27136 /* ~"Yes."~ */ GOTO 52
  IF ~~ THEN REPLY #27137 /* ~"Answer some questions for me instead."~ */ GOTO 35
  IF ~~ THEN REPLY #27138 /* ~"That's enough for now."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #27139 /* ~"I bestow this advice: Be wary of those you keep close to you. Never take them fully into your confidence, and never dilute your strength by sharing it. Many emperors I have known have done such, and I do not wish you to suffer the same fate."~ */
  IF ~  Global("Book_Advice","GLOBAL",1)
~ THEN REPLY #27140 /* ~"Give me some more advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27016 /* ~The book advised me: 'Be wary of those you keep close to you. Never take them fully into your confidence, and never dilute your strength by sharing it. Many emperors I have known have done such, and I do not wish you to suffer the same fate.'~ */ GOTO 38
  IF ~~ THEN REPLY #27141 /* ~"Very well. I had some other questions."~ */ JOURNAL #27016 /* ~The book advised me: 'Be wary of those you keep close to you. Never take them fully into your confidence, and never dilute your strength by sharing it. Many emperors I have known have done such, and I do not wish you to suffer the same fate.'~ */ GOTO 35
  IF ~~ THEN REPLY #27142 /* ~"That's enough."~ */ JOURNAL #27016 /* ~The book advised me: 'Be wary of those you keep close to you. Never take them fully into your confidence, and never dilute your strength by sharing it. Many emperors I have known have done such, and I do not wish you to suffer the same fate.'~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1 37.0
  SAY #27143 /* ~"Then I bestow this advice. If they claim friendship, then let them prove themselves. Words carry little weight compared to action. If friends they be, then they should be willing to die for you."~ */
  IF ~  Global("Book_Advice","GLOBAL",2)
~ THEN REPLY #27144 /* ~"Give me some more advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_1","GLOBALGood",-1)
~ JOURNAL #27017 /* ~The book advised me: 'If they claim friendship, then let them prove themselves. Words carry little weight compared to action. If friends they be, then they should be willing to die for you.'~ */ GOTO 39
  IF ~~ THEN REPLY #27145 /* ~"Very well. I had some other questions."~ */ JOURNAL #27017 /* ~The book advised me: 'If they claim friendship, then let them prove themselves. Words carry little weight compared to action. If friends they be, then they should be willing to die for you.'~ */ GOTO 35
  IF ~~ THEN REPLY #27146 /* ~"That's enough."~ */ JOURNAL #27017 /* ~The book advised me: 'If they claim friendship, then let them prove themselves. Words carry little weight compared to action. If friends they be, then they should be willing to die for you.'~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 36.2 38.0
  SAY #27147 /* ~You feel a slight tightening in your chest as the book speaks: "Then I bestow this advice. Show no weakness, do not admit error, do not show hesitation. These things tell others that you are uncertain, a stone that is unbalanced and may be toppled."~ */
  IF ~  Global("Book_Advice","GLOBAL",3)
~ THEN REPLY #27148 /* ~"Give me some more advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27018 /* ~The book advised me: 'Show no weakness, do not admit error, do not show hesitation. These things tell others that you are uncertain, a stone that is unbalanced and may be toppled.'~ */ GOTO 40
  IF ~~ THEN REPLY #27149 /* ~"Very well. I had some other questions."~ */ JOURNAL #27018 /* ~The book advised me: 'Show no weakness, do not admit error, do not show hesitation. These things tell others that you are uncertain, a stone that is unbalanced and may be toppled.'~ */ GOTO 35
  IF ~~ THEN REPLY #27150 /* ~"That's enough."~ */ JOURNAL #27018 /* ~The book advised me: 'Show no weakness, do not admit error, do not show hesitation. These things tell others that you are uncertain, a stone that is unbalanced and may be toppled.'~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 36.3 39.0
  SAY #27151 /* ~"Then I bestow this advice. Beware mercy. A turned back is no defense against an assassin's knife."~ */
  IF ~  Global("Book_Advice","GLOBAL",4)
~ THEN REPLY #27152 /* ~"Give me some more advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27019 /* ~The book advised me: 'Beware mercy. A turned back is no defense against an assassin's knife.'~ */ GOTO 41
  IF ~~ THEN REPLY #27153 /* ~"Very well. I had some other questions."~ */ JOURNAL #27019 /* ~The book advised me: 'Beware mercy. A turned back is no defense against an assassin's knife.'~ */ GOTO 35
  IF ~~ THEN REPLY #27154 /* ~"That's enough."~ */ JOURNAL #27019 /* ~The book advised me: 'Beware mercy. A turned back is no defense against an assassin's knife.'~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 36.4 40.0
  SAY #27155 /* ~"Then I bestow this advice. Beware the common view of love. Love must often be cruel in order so that it may rise above the merely sentimental."~ */
  IF ~  Global("Book_Advice","GLOBAL",5)
~ THEN REPLY #27157 /* ~"Give me some more advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_2","GLOBALGood",-1)
~ JOURNAL #27020 /* ~The book advised me: 'Beware the common view of love. Love must often be cruel in order so that it may rise above the merely sentimental.'~ */ GOTO 42
  IF ~~ THEN REPLY #27158 /* ~"Very well. I had some other questions."~ */ JOURNAL #27020 /* ~The book advised me: 'Beware the common view of love. Love must often be cruel in order so that it may rise above the merely sentimental.'~ */ GOTO 35
  IF ~~ THEN REPLY #27159 /* ~"That's enough."~ */ JOURNAL #27020 /* ~The book advised me: 'Beware the common view of love. Love must often be cruel in order so that it may rise above the merely sentimental.'~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.5 41.0
  SAY #27160 /* ~You feel a faint sneer curl up the corner of your mouth. You quickly repress it. "Then I bestow this advice: Separate yourself from small-minded fools and the weak by recognizing that you have a destiny. This alone gives you authority to tread where others would fear to go."~ */
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #27161 /* ~"Give me some more advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27021 /* ~The book advised me: 'Separate yourself from small-minded fools and the weak by recognizing that you have a destiny. This alone gives you authority to tread where others would fear to go.'~ */ GOTO 43
  IF ~~ THEN REPLY #27162 /* ~"Very well. I had some other questions."~ */ JOURNAL #27021 /* ~The book advised me: 'Separate yourself from small-minded fools and the weak by recognizing that you have a destiny. This alone gives you authority to tread where others would fear to go.'~ */ GOTO 35
  IF ~~ THEN REPLY #27163 /* ~"That's enough."~ */ JOURNAL #27021 /* ~The book advised me: 'Separate yourself from small-minded fools and the weak by recognizing that you have a destiny. This alone gives you authority to tread where others would fear to go.'~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 36.6 42.0
  SAY #27164 /* ~"Then I bestow this advice. There are two secrets to becoming great. One is never to reveal all that you know."~ */
  IF ~  Global("Book_Advice","GLOBAL",7)
~ THEN REPLY #27165 /* ~"Give me some more advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27022 /* ~The book advised me: 'There are two secrets to becoming great. One is never to reveal all that you know.'~ */ GOTO 44
  IF ~~ THEN REPLY #27166 /* ~"Very well. I had some other questions."~ */ JOURNAL #27022 /* ~The book advised me: 'There are two secrets to becoming great. One is never to reveal all that you know.'~ */ GOTO 35
  IF ~~ THEN REPLY #27167 /* ~"That's enough."~ */ JOURNAL #27022 /* ~The book advised me: 'There are two secrets to becoming great. One is never to reveal all that you know.'~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 36.7 43.0
  SAY #27168 /* ~"Then I bestow this advice. To become powerful, you must be willing to sacrifice: whether it is parts of yourself or things precious to you. Power is a bargain: One must give in order to receive."~ */
  IF ~  Global("Book_Advice","GLOBAL",8)
~ THEN REPLY #27169 /* ~"Give me some more advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_3","GLOBALGood",-1)
~ JOURNAL #27023 /* ~The book advised me: 'To become powerful, you must be willing to sacrifice: whether it is parts of yourself or things precious to you. Power is a bargain: One must give in order to receive.'~ */ GOTO 45
  IF ~~ THEN REPLY #27170 /* ~"Very well. I had some other questions."~ */ JOURNAL #27023 /* ~The book advised me: 'To become powerful, you must be willing to sacrifice: whether it is parts of yourself or things precious to you. Power is a bargain: One must give in order to receive.'~ */ GOTO 35
  IF ~~ THEN REPLY #27171 /* ~"That's enough."~ */ JOURNAL #27023 /* ~The book advised me: 'To become powerful, you must be willing to sacrifice: whether it is parts of yourself or things precious to you. Power is a bargain: One must give in order to receive.'~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 36.8 44.0
  SAY #27172 /* ~Your blood seems to move more sluggishly within your veins as the book speaks. "Then I bestow this advice. Honor and virtue are concepts that kill men and kill the spirit. They are only abstracts that drive men to strangeness and death. Be true to yourself and obey only your own will."~ */
  IF ~  Global("Book_Advice","GLOBAL",9)
~ THEN REPLY #27173 /* ~"Give me some more advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27028 /* ~The book advised me: 'Honor and virtue are concepts that kill men and kill the spirit. They are only abstracts that drive men to strangeness and death. Be true to yourself and obey only your own will.'~ */ GOTO 46
  IF ~~ THEN REPLY #27174 /* ~"Very well. I had some other questions."~ */ JOURNAL #27028 /* ~The book advised me: 'Honor and virtue are concepts that kill men and kill the spirit. They are only abstracts that drive men to strangeness and death. Be true to yourself and obey only your own will.'~ */ GOTO 35
  IF ~~ THEN REPLY #27175 /* ~"That's enough."~ */ JOURNAL #27028 /* ~The book advised me: 'Honor and virtue are concepts that kill men and kill the spirit. They are only abstracts that drive men to strangeness and death. Be true to yourself and obey only your own will.'~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 36.9 45.0
  SAY #27176 /* ~"Then I bestow this advice. Do not suffer one who has hurt you to live. To do so is an open admission of weakness."~ */
  IF ~  Global("Book_Advice","GLOBAL",10)
~ THEN REPLY #27177 /* ~"Give me some more advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27033 /* ~The book advised me: 'Do not suffer one who has hurt you to live. To do so is an open admission of weakness.'~ */ GOTO 47
  IF ~~ THEN REPLY #27178 /* ~"Very well. I had some other questions."~ */ JOURNAL #27033 /* ~The book advised me: 'Do not suffer one who has hurt you to live. To do so is an open admission of weakness.'~ */ GOTO 35
  IF ~~ THEN REPLY #27179 /* ~"That's enough."~ */ JOURNAL #27033 /* ~The book advised me: 'Do not suffer one who has hurt you to live. To do so is an open admission of weakness.'~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 36.10 46.0
  SAY #27180 /* ~"Then I bestow this advice. The soul of man is a sea of emotions. Often man struggles to bring order to these emotions, but it is a false order. Man's natural state is chaos, and it is a state that should be surrendered to."~ */
  IF ~  Global("Book_Advice","GLOBAL",11)
~ THEN REPLY #27181 /* ~"Give me some more advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_4","GLOBALGood",-1)
~ JOURNAL #27038 /* ~The book advised me: 'The soul of man is a sea of emotions. Often man struggles to bring order to these emotions, but it is a false order. Man's natural state is chaos, and it is a state that should be surrendered to.'~ */ GOTO 48
  IF ~~ THEN REPLY #27182 /* ~"Very well. I had some other questions."~ */ JOURNAL #27038 /* ~The book advised me: 'The soul of man is a sea of emotions. Often man struggles to bring order to these emotions, but it is a false order. Man's natural state is chaos, and it is a state that should be surrendered to.'~ */ GOTO 35
  IF ~~ THEN REPLY #27183 /* ~"That's enough."~ */ JOURNAL #27038 /* ~The book advised me: 'The soul of man is a sea of emotions. Often man struggles to bring order to these emotions, but it is a false order. Man's natural state is chaos, and it is a state that should be surrendered to.'~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 36.11 47.0
  SAY #27184 /* ~"Then I bestow this advice. Know the meaning of mercy, use it to your advantage... but do not practice it."~ */
  IF ~  Global("Book_Advice","GLOBAL",12)
~ THEN REPLY #27185 /* ~"Give me some more advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27043 /* ~The book advised me: 'Know the meaning of mercy, use it to your advantage... but do not practice it.'~ */ GOTO 49
  IF ~~ THEN REPLY #27186 /* ~"Very well. I had some other questions."~ */ JOURNAL #27043 /* ~The book advised me: 'Know the meaning of mercy, use it to your advantage... but do not practice it.'~ */ GOTO 35
  IF ~~ THEN REPLY #27187 /* ~"That's enough."~ */ JOURNAL #27043 /* ~The book advised me: 'Know the meaning of mercy, use it to your advantage... but do not practice it.'~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 36.12 48.0
  SAY #27188 /* ~"Then I bestow this advice. Nurture fear in others, for only fear rules men. Nothing else leaves deeper scars."~ */
  IF ~  Global("Book_Advice","GLOBAL",13)
~ THEN REPLY #27189 /* ~"Give me some more advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27048 /* ~The book advised me: 'Nurture fear in others, for only fear rules men. Nothing else leaves deeper scars.'~ */ GOTO 50
  IF ~~ THEN REPLY #27190 /* ~"Very well. I had some other questions."~ */ JOURNAL #27048 /* ~The book advised me: 'Nurture fear in others, for only fear rules men. Nothing else leaves deeper scars.'~ */ GOTO 35
  IF ~~ THEN REPLY #27191 /* ~"That's enough."~ */ JOURNAL #27048 /* ~The book advised me: 'Nurture fear in others, for only fear rules men. Nothing else leaves deeper scars.'~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 36.13 49.0
  SAY #27192 /* ~"Then I bestow this advice. Extend a smile and the hand of friendship to your enemies. When they clasp your hand, strike them with the dagger in your other hand, else they will surely do the same to you."~ */
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #27193 /* ~"Give me some more advice."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-5)
~ JOURNAL #27053 /* ~The book advised me: 'Extend a smile and the hand of friendship to your enemies. When they clasp your hand, strike them with the dagger in your other hand, else they will surely do the same to you.'~ */ GOTO 51
  IF ~~ THEN REPLY #27194 /* ~"Very well. I had some other questions."~ */ JOURNAL #27053 /* ~The book advised me: 'Extend a smile and the hand of friendship to your enemies. When they clasp your hand, strike them with the dagger in your other hand, else they will surely do the same to you.'~ */ GOTO 35
  IF ~~ THEN REPLY #27195 /* ~"That's enough."~ */ JOURNAL #27053 /* ~The book advised me: 'Extend a smile and the hand of friendship to your enemies. When they clasp your hand, strike them with the dagger in your other hand, else they will surely do the same to you.'~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 36.14 50.0
  SAY #27196 /* ~As the book speaks these words, you feel a chill weight settle on your heart. You feel somehow tainted: "These are my last words of advice. Weigh them carefully. Remember that you can expunge anything you find undesirable. You need only have the will."~ */
  IF ~  Global("Book_Advice","GLOBAL",15)
~ THEN REPLY #27197 /* ~"Give me some more advice."~ */ JOURNAL #27058 /* ~The book advised me: 'Remember that you can expunge anything you find undesirable. You need only have the will.'~ */ GOTO 52
  IF ~~ THEN REPLY #27198 /* ~"Very well. I had some other questions."~ */ JOURNAL #27058 /* ~The book advised me: 'Remember that you can expunge anything you find undesirable. You need only have the will.'~ */ GOTO 35
  IF ~~ THEN REPLY #27199 /* ~"That's enough."~ */ JOURNAL #27058 /* ~The book advised me: 'Remember that you can expunge anything you find undesirable. You need only have the will.'~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 36.15 51.0
  SAY #27200 /* ~"I regret that I can speak no more words of wisdom to you. You have received an education in the phrases I have given you; reflect on them."~ */
  IF ~~ THEN REPLY #27201 /* ~"Very well. I had some other questions."~ */ GOTO 35
  IF ~~ THEN REPLY #27202 /* ~"That's enough."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 35.0
  SAY #27203 /* ~The book sighs: "The diseased rat-mage unearthed me in the catacombs. He pried me from the grip of my former master. He brought me to his nest, but his power was limited, and he understood little of my teachings."~ */
  IF ~  Global("E_Book","GLOBAL",1)
~ THEN REPLY #27204 /* ~"Tell me of your powers."~ */ GOTO 29
  IF ~  Global("E_Book","GLOBAL",2)
~ THEN REPLY #27205 /* ~"Tell me of your powers."~ */ GOTO 30
  IF ~~ THEN REPLY #27206 /* ~"I see. Answer some other questions for me."~ */ GOTO 35
  IF ~~ THEN REPLY #27207 /* ~"True. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 35.1
  SAY #27208 /* ~"I am power, master, and I can teach you more."~ */
  IF ~  Global("E_Book","GLOBAL",1)
~ THEN REPLY #27209 /* ~"How?"~ */ GOTO 29
  IF ~  Global("E_Book","GLOBAL",2)
~ THEN REPLY #27210 /* ~"Refresh my memory."~ */ GOTO 30
  IF ~~ THEN REPLY #27211 /* ~"Not interested right now. Answer some other questions for me, instead."~ */ GOTO 35
  IF ~~ THEN REPLY #27212 /* ~"Not interested. Farewell, book."~ */ GOTO 1
END

IF ~~ THEN BEGIN 55 // from: 34.0
  SAY #27213 /* ~"In time, in time! You must have patience! You have already shown yourself willing to do what it takes to achieve this power, and you must realize that you WILL pay for this power."~ */
  IF ~~ THEN REPLY #27214 /* ~"What do I have to do?"~ */ GOTO 59
  IF ~~ THEN REPLY #27215 /* ~"I've paid enough. Forget it."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.1
  SAY #27216 /* ~The book speaks scornfully. "To have come so far, only to back out now. Shameful. You are not as strong as I had thought."~ */
  IF ~~ THEN REPLY #27217 /* ~"Be that as it may. Answer some questions for me."~ */ GOTO 57
  IF ~~ THEN REPLY #27218 /* ~"Fine. What do I have to do?"~ */ GOTO 59
  IF ~~ THEN REPLY #27219 /* ~"Be that as it may. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #27220 /* ~"No. I will not until you show yourself willing to achieve your potential."~ */
  IF ~~ THEN REPLY #27221 /* ~"What do I have to do?"~ */ GOTO 59
  IF ~~ THEN REPLY #27222 /* ~"Forget it, then."~ */ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.1
  SAY #27223 /* ~"Be that as it may. One route leads to failure, one to success."~ */
  IF ~~ THEN REPLY #27224 /* ~"Fine."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 55.0 56.1 57.0
  SAY #27225 /* ~"Do you have companions you are willing to betray?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27226 /* ~"How about Morte?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ JOURNAL #27235 /* ~The book has offered me still more power in exchange for killing one of my companions. It is tempting, to be sure...~ */ GOTO 66
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #27227 /* ~"How about Annah?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #27228 /* ~"How about Dak'kon?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27229 /* ~"How about Fall-from-Grace?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #27230 /* ~"How about Nordom?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #27231 /* ~"How about Vhailor?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #27232 /* ~"How about Ignus?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~~ THEN REPLY #27233 /* ~"None I am willing to betray."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 61
  IF ~  !NearbyDialog("DIgnus")
!NearbyDialog("DVhail")
!NearbyDialog("DNordom")
!NearbyDialog("DGrace")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #27234 /* ~"I have no companions."~ */ GOTO 63
END

IF ~  Global("E_Book","GLOBAL",5)
~ THEN BEGIN 60 // from:
  SAY #27236 /* ~"I can grant you one more power. You have shown yourself willing to do what it takes to finish a job. Your final task is to slay one of your companions, by yourself, without spells."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27237 /* ~"How about Morte?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #27238 /* ~"How about Annah?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #27239 /* ~"How about Dak'kon?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27240 /* ~"How about Fall-from-Grace?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #27241 /* ~"How about Nordom?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #27242 /* ~"How about Vhailor?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #27243 /* ~"How about Ignus?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~~ THEN REPLY #27244 /* ~"I don't think so."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 61
  IF ~  !NearbyDialog("DIgnus")
!NearbyDialog("DVhail")
!NearbyDialog("DNordom")
!NearbyDialog("DGrace")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #27245 /* ~"I have no companions."~ */ GOTO 63
END

IF ~~ THEN BEGIN 61 // from: 59.7 60.7
  SAY #27246 /* ~"Bah. Then I shall waste no more time in trying to educate you. Have you no ambition? Have you no desire? You weak fool."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27247 /* ~"Fine. How about Morte?"~ */ GOTO 66
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #27248 /* ~"Fine. How about Annah?"~ */ GOTO 66
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #27249 /* ~"Fine. How about Dak'kon?"~ */ GOTO 66
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27250 /* ~"Fine. How about Fall-from-Grace?"~ */ GOTO 66
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #27251 /* ~"Fine. How about Nordom?"~ */ GOTO 66
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #27252 /* ~"Fine. How about Vhailor?"~ */ GOTO 66
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #27253 /* ~"Fine. How about Ignus?"~ */ GOTO 66
  IF ~~ THEN REPLY #27254 /* ~"As I said: None that I am willing to sacrifice. No power is worth that."~ */ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.7 63.0
  SAY #27255 /* ~You never knew a book could sneer until now. "Then suffer in darkness, fool."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27256 /* ~"I changed my mind. I'll kill Morte."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #27257 /* ~"I changed my mind. I'll kill Annah."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #27258 /* ~"I changed my mind. I'll kill Dak'kon."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27259 /* ~"I changed my mind. I'll kill Fall-from-Grace."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #27260 /* ~"I changed my mind. I'll kill Nordom."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #27261 /* ~"I changed my mind. I'll kill Vhailor."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #27262 /* ~"I changed my mind. I'll kill Ignus."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  !NearbyDialog("DIgnus")
!NearbyDialog("DVhail")
!NearbyDialog("DNordom")
!NearbyDialog("DGrace")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #27263 /* ~"I have no companions."~ */ GOTO 63
  IF ~~ THEN REPLY #27264 /* ~"I will. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 59.8 60.8 62.7
  SAY #27265 /* ~"Then find one! Earn someone's trust and betray it, and you will have proven yourself worthy of the third power! Do not speak to me again until you have achieved this."~ */
  IF ~~ THEN REPLY #27266 /* ~"No."~ */ GOTO 62
  IF ~~ THEN REPLY #27267 /* ~"Fine, fine."~ */ EXIT
END

IF ~  Global("E_Book","GLOBAL",6)
~ THEN BEGIN 64 // from:
  SAY #27268 /* ~"Well? Have you achieved your goal? Have you slain a companion, by yourself, without spells?"~ */
  IF ~  Global("PM_Killed","GLOBAL",1)
~ THEN REPLY #27269 /* ~"Yes, I have."~ */ DO ~SetGlobal("E_Book","GLOBAL",7)
IncrementGlobalOnceEx("GLOBALEvil_Book_8","GLOBALGood",-8)
~ GOTO 67
  IF ~  !Global("PM_Killed","GLOBAL",1)
~ THEN REPLY #27270 /* ~"Not yet."~ */ GOTO 65
  IF ~~ THEN REPLY #27271 /* ~"No. And I'm not going to."~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.1 64.2
  SAY #27272 /* ~The book falls abruptly silent, and no amount of coaxing can induce it to answer you again.~ */
  IF ~~ THEN REPLY #27273 /* ~"Fine."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 59.0 59.1 59.2 59.3 59.4 59.5 59.6 60.0 60.1 60.2 60.3 60.4 60.5 60.6 61.0 61.1 61.2 61.3 61.4 61.5 61.6 62.0 62.1 62.2 62.3 62.4 62.5 62.6
  SAY #27274 /* ~"I care not who, as long as you show yourself willing. Go now and do it."~ */
  IF ~~ THEN REPLY #27275 /* ~"Very well."~ */ JOURNAL #27276 /* ~I have just agreed to slay one of my companions in exchange for power from the book.~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 64.0
  SAY #27277 /* ~"Excellent. You have proven yourself a worthy student. This, then, is the final spell I can teach you." It mutters some strange syllables, and you hear a strange howl in your heart. You know the spell Power Word, Kill.~ */
  IF ~~ THEN REPLY #27278 /* ~"Thanks, book. What now?"~ */ DO ~SetGlobal("E_Book","GLOBAL",8)
GiveItemCreate("SPWI909",Protagonist,1,1,0)
~ JOURNAL #27281 /* ~The book has given me yet another, more powerful spell in exchange for the death of one of my companions - a worthy trade.~ */ GOTO 68
  IF ~~ THEN REPLY #27279 /* ~"Farewell, book."~ */ DO ~SetGlobal("E_Book","GLOBAL",8)
GiveItemCreate("SPWI909",Protagonist,1,1,0)
~ JOURNAL #27281 /* ~The book has given me yet another, more powerful spell in exchange for the death of one of my companions - a worthy trade.~ */ EXIT
END

IF ~  GlobalGT("E_Book","GLOBAL",7)
~ THEN BEGIN 68 // from: 67.0
  SAY #27282 /* ~The book is silent and does not answer you. It appears to have run out of words.~ */
  IF ~  Global("E_Book","GLOBAL",8)
~ THEN REPLY #27283 /* ~"Very well."~ */ DO ~SetGlobal("E_Book","GLOBAL",9)
~ JOURNAL #27284 /* ~The book speaks to me no longer.~ */ EXIT
  IF ~  Global("E_Book","GLOBAL",9)
~ THEN REPLY #27283 /* ~"Very well."~ */ EXIT
END
