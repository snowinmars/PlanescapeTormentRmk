// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKUUYIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DKUUYIN~

IF ~  GlobalGT("KYName","GLOBAL",2)
GlobalLT("KYName","GLOBAL",7)
~ THEN BEGIN 0 // from:
  SAY #20109 /* ~The despondent man looks up to you, a glimmer of hope in his eyes, yet he speaks as emotionlessly as ever. "Has she given you my name and number? She has offered money, has she not? I cannot live. Money means nothing without a name. Get me my name. Has she given it?" His eyes crawl across your face, watching intently.~ */
  IF ~  PartyHasItem("KYName")
~ THEN REPLY #20110 /* ~"Yes. She has."~ */ GOTO 5
  IF ~  PartyHasItem("KYName")
~ THEN REPLY #20111 /* ~Lie: "No. Not yet."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_KY_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  !PartyHasItem("KYName")
~ THEN REPLY #20112 /* ~"No. Not yet."~ */ DO ~SetGlobal("KYName","GLOBAL",5)
~ GOTO 15
  IF ~  !PartyHasItem("KYName")
~ THEN REPLY #20113 /* ~"No. Not yet. I'm still working on it. Farewell."~ */ DO ~SetGlobal("KYName","GLOBAL",5)
~ GOTO 15
  IF ~  !PartyHasItem("KYName")
~ THEN REPLY #45396 /* ~"She has offered money for them."~ */ DO ~SetGlobal("KYName","GLOBAL",5)
~ GOTO 25
END

IF ~~ THEN BEGIN 1 // from: 0.1 17.0
  SAY #20114 /* ~A flurry of muscle spasms rock his face. "Forgive me," he says, "for I have wronged you in my mind. I see in your face the knowledge that you have my name and number, yet I hear your voice tell me you do not. I ask again. Do you have my name and number?"~ */
  IF ~~ THEN REPLY #20115 /* ~Lie: "No, I don't."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_KY_2","GLOBALLaw",-1)
~ GOTO 2
  IF ~~ THEN REPLY #20116 /* ~"Yes. I do."~ */ GOTO 5
  IF ~~ THEN REPLY #20117 /* ~"Answer some questions for me first, will you?"~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #20118 /* ~"Three times must I ask before I can ask no longer. That is the law. Do you have my name and number?"~ */
  IF ~~ THEN REPLY #20119 /* ~Lie: "No."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_KY_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #20120 /* ~"Yes. I do."~ */ GOTO 5
  IF ~~ THEN REPLY #20121 /* ~"Answer some questions for me first, will you?"~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.0 2.2 5.2 6.1
  SAY #20122 /* ~"There is no justice here. I have been wronged, and cannot speak of it. I am nothing, and remain nothing forever. I will see you no more."~ */
  IF ~~ THEN REPLY #20123 /* ~"Wait, I have your name and number after all..."~ */ JOURNAL #66390 /* ~Ku'u Yin refused me when I offered him his name and number back. To the Nine Hells with him, anyway.~ */ GOTO 4
  IF ~~ THEN REPLY #20124 /* ~"Answer a few more questions for me, will you?"~ */ GOTO 4
  IF ~~ THEN REPLY #20125 /* ~"All right. If that's the way you want it."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1
  SAY #20126 /* ~He shakes his head, and turns to walk away.~ */
  IF ~~ THEN REPLY #20127 /* ~"Farewell, then."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 1.1 2.1 17.1
  SAY #20128 /* ~"May I have them?"~ */
  IF ~~ THEN REPLY #20129 /* ~"What will you give me for them?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_KY_2","GLOBALGood",-1)
~ GOTO 6
  IF ~~ THEN REPLY #20130 /* ~"Yes. Your name is Ku'u Yin. Take your number."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_KY_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_KY_1","GLOBALGood",1)
AddexperienceParty(2500)
SetGlobal("KYName","GLOBAL",7)
~ GOTO 7
  IF ~~ THEN REPLY #20131 /* ~"No."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_KY_1","GLOBALGood",-1)
~ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #20132 /* ~"I can give you nothing for I have nothing. Will you give me my name and number?"~ */
  IF ~~ THEN REPLY #20133 /* ~"Yes. Your name is Ku'u Yin. Take your number."~ */ DO ~TakePartyItemNum("KYName",1)
AddexperienceParty(2500)
SetGlobal("KYName","GLOBAL",7)
~ GOTO 8
  IF ~~ THEN REPLY #20134 /* ~"No."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_KY_3","GLOBALGood",-1)
~ GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #20135 /* ~"I thank you for my name and number. Yes. Ku'u Yin. Yes. But no. I now realize I no longer require a number here. I will find myself a new number, if necessary. I give you my old number. It can help you. It is a mantle of law. It is protection. Do you accept it?"~ */
  IF ~~ THEN REPLY #20136 /* ~"Yes."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_KY_2","GLOBALLaw",4)
~ GOTO 9
  IF ~~ THEN REPLY #20137 /* ~"No."~ */ DO ~TakePartyItemNum("KYName",1)
~ GOTO 14
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #20138 /* ~He accepts them gravely. "I thank you for my name and number. Yes. Ku'u Yin. Yes. You have my gratitude. I will remember you." He throws the number around his throat like a scarf, and it sinks into his skin. He begins to walk away from you.~ */
  IF ~~ THEN REPLY #20139 /* ~"Wait. I had a few more questions..."~ */ JOURNAL #66391 /* ~I returned Ku'u Yin's name and number to him. He didn't offer me anything for them. Maybe I shouldn't have tried to blackmail him for them...~ */ GOTO 10
  IF ~~ THEN REPLY #20140 /* ~"Farewell."~ */ DO ~EscapeArea()
~ JOURNAL #66391 /* ~I returned Ku'u Yin's name and number to him. He didn't offer me anything for them. Maybe I shouldn't have tried to blackmail him for them...~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #20141 /* ~"Let it warm you. Trust in it. It will protect you. Farewell." He turns and begins to walk away from you.~ */
  IF ~~ THEN REPLY #20142 /* ~"Wait. I had a few more questions..."~ */ JOURNAL #66392 /* ~I returned Ku'u Yin's name and number to him. He offered me his number, and said it would warm me and protect me.~ */ GOTO 10
  IF ~~ THEN REPLY #20143 /* ~"Farewell."~ */ DO ~EscapeArea()
~ JOURNAL #66392 /* ~I returned Ku'u Yin's name and number to him. He offered me his number, and said it would warm me and protect me.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0 11.0 12.0 13.0 14.0
  SAY #20144 /* ~"What were they?"~ */
  IF ~~ THEN REPLY #20145 /* ~"Tell me about yourself."~ */ GOTO 11
  IF ~~ THEN REPLY #20146 /* ~"Tell me about this place."~ */ GOTO 12
  IF ~~ THEN REPLY #20147 /* ~"What are you doing?"~ */ GOTO 13
  IF ~~ THEN REPLY #20148 /* ~"Nothing. Forget it. Farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #20149 /* ~"I am Ku'u Yin. I came here by accident. Now that I am here, I intend to learn more. I must know more."~ */
  IF ~~ THEN REPLY #20150 /* ~"I had other questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #20151 /* ~"Good luck. Farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #20152 /* ~"I intend to discover that myself. With my name, I am again a person. I can learn. I will do so."~ */
  IF ~~ THEN REPLY #20153 /* ~"I had other questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #20154 /* ~"Good luck. Farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY #20155 /* ~"Preparing to face this new world with my old identity. Now that I know there are hidden pitfalls, I intend to discover what I can. I am ready now."~ */
  IF ~~ THEN REPLY #20156 /* ~"I had other questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #20157 /* ~"Good luck. Farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.1
  SAY #20158 /* ~He throws the number around his throat like a scarf, and it sinks into his skin. "Then I will wear my old number. You have my gratitude. Farewell." He turns and begins to walk toward the exit.~ */
  IF ~~ THEN REPLY #20159 /* ~"I had other questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #20160 /* ~"Good luck. Farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 0.2 0.3
  SAY #20161 /* ~He speaks flatly as you approach. "I implore you to continue your bargaining with the thief. Without my name and number, I am nothing."~ */
  IF ~~ THEN REPLY #20162 /* ~"I'm on my way. Answer a few questions first, will you?"~ */ GOTO 16
  IF ~~ THEN REPLY #20163 /* ~"Very well. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 18.1 19.0 20.0 20.3 21.2 22.0 22.1 23.0 23.1 24.0
  SAY #20164 /* ~"What do you wish to know?"~ */
  IF ~  Global("KYName","GLOBAL",0)
~ THEN REPLY #20165 /* ~"Tell me of yourself."~ */ DO ~SetGlobal("KYName","GLOBAL",1)
~ GOTO 20
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20166 /* ~"Tell me of yourself."~ */ GOTO 20
  IF ~~ THEN REPLY #20167 /* ~"Tell me of this place."~ */ GOTO 21
  IF ~~ THEN REPLY #20168 /* ~"Tell me of Sigil."~ */ GOTO 21
  IF ~  Global("KYName","GLOBAL",0)
~ THEN REPLY #20169 /* ~"Nothing. Farewell."~ */ DO ~SetGlobal("KYName","GLOBAL",1)
~ GOTO 20
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20170 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~  GlobalGT("KYName","GLOBAL",0)
GlobalLT("KYName","GLOBAL",3)
~ THEN BEGIN 17 // from:
  SAY #20171 /* ~"Have you located the woman with my name and number? She will tell you she won the name from me, but she did not. She stole it. I require my name and number. She is in the Village, somewhere."~ */
  IF ~  PartyHasItem("KYName")
~ THEN REPLY #20172 /* ~Lie: "No, not yet."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_KY_2","GLOBALLaw",-1)
~ GOTO 1
  IF ~  PartyHasItem("KYName")
~ THEN REPLY #20173 /* ~"I have your name and number."~ */ GOTO 5
  IF ~  Global("KYName","GLOBAL",2)
!PartyHasItem("KYName")
~ THEN REPLY #20174 /* ~"I have. She doesn't want to give it up."~ */ DO ~SetGlobal("KYName","GLOBAL",3)
~ GOTO 18
  IF ~  !PartyHasItem("KYName")
~ THEN REPLY #20175 /* ~"I haven't got it yet."~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.2
  SAY #20176 /* ~He pales for a moment. "She must. They are mine. She stole them from me. I request your assistance."~ */
  IF ~~ THEN REPLY #20177 /* ~"You're getting it."~ */ GOTO 19
  IF ~~ THEN REPLY #20178 /* ~"Perhaps if you answered some other questions for me..."~ */ GOTO 16
  IF ~~ THEN REPLY #20179 /* ~"Forget it."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 17.3 18.0 18.2
  SAY #20180 /* ~"I require assistance. Any assistance you give me will be remembered with gratitude. Please help."~ */
  IF ~~ THEN REPLY #20181 /* ~"We can start with you answering some other questions for me..."~ */ GOTO 16
  IF ~~ THEN REPLY #20182 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.0 16.1 16.4 21.0 21.1 21.3
  SAY #20183 /* ~"I once lived in a land of metal machines and doors that opened at a word. I dream of the pristine metal cities and the empty shells that are our people. I had a number and a name there, and now I have neither. Like all my kind, they are all I have. They are all I have had of my own all my life. They were stolen from me. Without them I am nothing. I request your aid."~ */
  IF ~~ THEN REPLY #20184 /* ~"I'll see what I can do. Answer some other questions for me..."~ */ JOURNAL #66389 /* ~I met a strange man whose name and number were stolen from him. He seems to come from a land of law and metal, where all things have their place and number, and he seems naked and cold without his.~ */ GOTO 16
  IF ~~ THEN REPLY #20185 /* ~"Who has your name and number?"~ */ JOURNAL #66389 /* ~I met a strange man whose name and number were stolen from him. He seems to come from a land of law and metal, where all things have their place and number, and he seems naked and cold without his.~ */ GOTO 23
  IF ~~ THEN REPLY #20186 /* ~"What can you give me?"~ */ JOURNAL #66389 /* ~I met a strange man whose name and number were stolen from him. He seems to come from a land of law and metal, where all things have their place and number, and he seems naked and cold without his.~ */ GOTO 22
  IF ~~ THEN REPLY #20187 /* ~"We'll see. Answer some other questions for me."~ */ JOURNAL #66389 /* ~I met a strange man whose name and number were stolen from him. He seems to come from a land of law and metal, where all things have their place and number, and he seems naked and cold without his.~ */ GOTO 16
  IF ~~ THEN REPLY #20188 /* ~"We'll see. Farewell."~ */ JOURNAL #66389 /* ~I met a strange man whose name and number were stolen from him. He seems to come from a land of law and metal, where all things have their place and number, and he seems naked and cold without his.~ */ EXIT
  IF ~~ THEN REPLY #20189 /* ~"I'll try. Farewell."~ */ JOURNAL #66389 /* ~I met a strange man whose name and number were stolen from him. He seems to come from a land of law and metal, where all things have their place and number, and he seems naked and cold without his.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 16.2 16.3
  SAY #20190 /* ~"I know nothing of it. I do not know this place. I have no name. I have no number. I have no memory of this place. I am cold. I am scared. This is strange, to be so naked. I fear I will die." ~ */
  IF ~  Global("KYName","GLOBAL",0)
~ THEN REPLY #20191 /* ~"What do you mean?"~ */ DO ~SetGlobal("KYName","GLOBAL",1)
~ GOTO 20
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20192 /* ~"What do you mean?"~ */ GOTO 20
  IF ~~ THEN REPLY #20193 /* ~"I had some other questions..."~ */ GOTO 16
  IF ~  Global("KYName","GLOBAL",0)
~ THEN REPLY #20194 /* ~"Hm. Interesting. Farewell."~ */ DO ~SetGlobal("KYName","GLOBAL",1)
~ GOTO 20
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20195 /* ~"Hm. Interesting. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.2
  SAY #20196 /* ~"I have nothing. I request your aid."~ */
  IF ~~ THEN REPLY #20197 /* ~"I'll see what I can do. Answer some other questions for me..."~ */ GOTO 16
  IF ~~ THEN REPLY #20198 /* ~"We'll see. Answer some other questions for me."~ */ GOTO 16
  IF ~~ THEN REPLY #20199 /* ~"Forget it, then. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #20200 /* ~"I'll try. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.1
  SAY #20201 /* ~"The one who used to be Radine. She stole them from me. I offered her the shelter of my name and number, and she stole them from me. They are mine lawfully and by right. Find her. She is in this Village."~ */
  IF ~~ THEN REPLY #20202 /* ~"I'll see what I can do. Answer some other questions for me..."~ */ GOTO 16
  IF ~~ THEN REPLY #20203 /* ~"Tough. Answer some other questions for me..."~ */ GOTO 16
  IF ~~ THEN REPLY #20204 /* ~"I'll see what I can do."~ */ EXIT
  IF ~~ THEN REPLY #20205 /* ~"Tough for you. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 24 // from:
  SAY #20206 /* ~You see a drab man with a perfectly moon-shaped face. He looks at you without expression, and does not speak. He looks as though his voice would be as flat as a meadow.~ */
  IF ~~ THEN REPLY #20207 /* ~"Greetings. I was hoping you could answer a few questions for me..."~ */ GOTO 16
  IF ~~ THEN REPLY #20208 /* ~Leave him in peace.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 0.4
  SAY #45395 /* ~"No money can buy a name. No amount can buy a number. Coin is scant consolation for identity. Surely you can understand."~ */
  IF ~~ THEN REPLY #45397 /* ~"Yes, I can. I'll do what I can. Farewell."~ */ EXIT
END
