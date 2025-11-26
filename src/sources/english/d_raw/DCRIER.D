// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRIER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRIER~

IF ~  Global("Crier","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #26006 /* ~Streams of tears have carved channels down this man's dust-covered face. He looks to be a monk or a holy man of some sort, but the dirt covering his body makes it nearly impossible to see the man beneath. He is chanting and rolling his head back and forth - it looks like some sort of ritual.~ */
  IF ~~ THEN REPLY #26007 /* ~"Greetings."~ */ GOTO 4
  IF ~~ THEN REPLY #26008 /* ~Leave the holy man alone.~ */ EXIT
END

IF ~  Global("Crier","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #26523 /* ~You see the Crier of Es-Annon. He still emits choked sobs as he chants the dead city's name, and tears roll down his cheeks.~ */
  IF ~  Global("Crier_Quest","GLOBAL",0)
~ THEN REPLY #26524 /* ~"I must ask: Why do you mourn a city?"~ */ GOTO 8
  IF ~  Global("Crier_Quest","GLOBAL",1)
~ THEN REPLY #26526 /* ~"I have not yet found a tombstone on which to carve Es-Annon's name."~ */ GOTO 3
  IF ~  Global("Crier_Quest","GLOBAL",2)
~ THEN REPLY #26527 /* ~"I have seen to it that Es-Annon's name has been remembered. It lies carved upon the black stone monument outside of the Mortuary."~ */ DO ~SetGlobal("Crier","GLOBAL",2)
AddexperienceParty(500)
~ JOURNAL #26530 /* ~I saw to it that the name of Es-Annon was carved upon the Dustman memorial. I returned and told the Crier, and his stream of tears ended. He seems at peace now, and he was grateful for my efforts.~ */ GOTO 23
  IF ~~ THEN REPLY #26528 /* ~Leave the Crier alone.~ */ EXIT
END

IF ~  Global("Crier","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #26525 /* ~You see the Crier of Es-Annon. He looks relaxed, and his gaze speaks of a peace that was not there when you first spoke to him. "Thank you, my friend. Soon, I will go in search of my brothers and tell them our mourning is done."~ */
  IF ~~ THEN REPLY #26531 /* ~"Very well. I wish you good fortune on your journey. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #26529 /* ~The Crier shakes his head. "It is as I feared. The Criers of Es-Annon are the only ones who can bear the burden. You need not search any more, friend..."~ */
  IF ~~ THEN REPLY #26532 /* ~"No. I'll continue to look for a tombstone, and I'll return when Es-Annon's name is upon it."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0
  SAY #26533 /* ~The man stops his frenzied chanting and glares at you with his tear-rimmed eyes. He opens his parched mouth to speak, but all he can manage is a withered croak. ~ */
  IF ~~ THEN REPLY #26534 /* ~"What's wrong? Why are you crying?"~ */ GOTO 5
  IF ~~ THEN REPLY #26535 /* ~"Sorry to disturb you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #26536 /* ~"I..." His voice is so hoarse that it sounds like he has been without water for days. As you watch, a tear trickles down his face. "I... am a Crier of Es-Annon."~ */
  IF ~~ THEN REPLY #26537 /* ~"Es-Annon? Who is that?"~ */ DO ~SetGlobal("Crier","GLOBAL",1)
~ JOURNAL #26540 /* ~I met a "Crier of Es-Annon" on the streets of the Hive. According to him, Es-Annon was a city that had been destroyed long ago, and he (and the remaining survivors) now travel the planes, crying of the city to all who would listen. It is their wish that Es-Annon be remembered. ~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #26541 /* ~"Wh... *Who* is Es-Annon?!" The man throws back his head and gives a rasping laugh; it sounds brutal and defeated. "Es-Annon... it is not a man, but a city!"~ */
  IF ~~ THEN REPLY #26542 /* ~"Why do you cry for a city?"~ */ GOTO 7
  IF ~~ THEN REPLY #26543 /* ~"I fear I have upset you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #26544 /* ~"We cry its name because Es-Annon must not be forgotten. All the Criers of Es-Annon carry this burden."~ */
  IF ~~ THEN REPLY #26545 /* ~"You mourn a *city?* Why do you do such a thing?"~ */ GOTO 8
  IF ~~ THEN REPLY #26546 /* ~"I see; I will leave you to your thoughts. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.0 7.0
  SAY #26547 /* ~"Because its name is all that remains. Its avenues of light, its great spiraling parks... when it was laid waste and reduced to memory, only three-score of its people survived. It was our duty to see that its name was remembered across the planes. Many Criers of Es-Annon have died for the sake of remembering... many..."~ */
  IF ~~ THEN REPLY #26549 /* ~"If it places you and the others at risk, why don't you stop?"~ */ GOTO 9
  IF ~~ THEN REPLY #26550 /* ~"I mourn the loss of your city and your citizens. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #26551 /* ~"The tears I shed, the dust that cloaks me... these things are as nothing compared to what awaits should I give up my sacred burden. We MUST see to it that its name is remembered. We are living memorials to its passage."~ */
  IF ~~ THEN REPLY #26552 /* ~"If that's so, then what happens if you all die?"~ */ GOTO 10
  IF ~~ THEN REPLY #26553 /* ~"I mourn the loss of your city and your citizens. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #26555 /* ~A fresh tear springs to the Crier's eye. Even his dust-caked face cannot disguise his look of despair. "I do not KNOW. We Criers of Es-Annon cannot mourn it forever... even now, the dust clings to our robes, the spit dries in our mouths, our bodies wither and die."~ */
  IF ~~ THEN REPLY #26556 /* ~"Is there any way I could help you?"~ */ GOTO 11
  IF ~~ THEN REPLY #26557 /* ~"I mourn the loss of your city and your citizens. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #26558 /* ~"You are kind to ask..." The Crier shakes his head. "Unless you can immortalize Es-Annon, there is no help to be had."~ */
  IF ~~ THEN REPLY #26560 /* ~"Does it have to be you that cries Es-Annon's name?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #26562 /* ~"Must it be immortalized by a man? Would a tombstone serve?"~ */ GOTO 16
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #26561 /* ~"Must it be immortalized by a man? Would a tombstone serve?"~ */ GOTO 16
  IF ~~ THEN REPLY #26563 /* ~"I mourn the loss of your city and your citizens. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #26564 /* ~"Does it matter? Another man might cry the name, but then he, too, would die." A tear slowly forms in the corner of his eye, then begins to trickle down his cheek. "There is nothing to be done. When the Criers of Es-Annon die, so dies Es-Annon."~ */
  IF ~~ THEN REPLY #26565 /* ~"And perhaps that is as it should be. If the city is gone, as you say, then it was meant to be forgotten."~ */ GOTO 13
  IF ~~ THEN REPLY #26567 /* ~"It sounds as if the act of remembering Es-Annon places what remains of its people at risk. Is it worth so much?"~ */ GOTO 13
  IF ~~ THEN REPLY #26568 /* ~"What about a tombstone?"~ */ GOTO 16
  IF ~~ THEN REPLY #26569 /* ~"I mourn the loss of your city and your citizens. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1
  SAY #26570 /* ~The dirt caking the man's face cracks, and he snarls. "You know nothing! You saw naught its beauty! Naught of its splendor! Would you discard such a memory, such a perfect memory, if you possessed it?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #26571 /* ~"Things are meant to die. They are meant to be forgotten. This is my advice to you, Crier of Es-Annon... if you carry the city to your grave, who have you served?"~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",1)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #26573 /* ~"Things are meant to die. They are meant to be forgotten. This is my advice to you, Crier of Es-Annon... if you carry the city to your grave, who have you served?"~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",1)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,13,CHR)
CheckStatLT(Protagonist,14,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #26574 /* ~"Things are meant to die. They are meant to be forgotten. This is my advice to you, Crier of Es-Annon... if you carry the city to your grave, who have you served?"~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",1)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #26575 /* ~"I would not foolishly let such a memory die by placing the last keepers of that memory in jeopardy. It would be better if you spent the rest of your days remembering Es-Annon with your brothers."~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",2)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #26576 /* ~"I would not foolishly let such a memory die by placing the last keepers of that memory in jeopardy. It would be better if you spent the rest of your days remembering Es-Annon with your brothers."~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",2)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,13,CHR)
CheckStatLT(Protagonist,14,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #26577 /* ~"I would not foolishly let such a memory die by placing the last keepers of that memory in jeopardy. It would be better if you spent the rest of your days remembering Es-Annon with your brothers."~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",2)
~ GOTO 14
  IF ~~ THEN REPLY #26578 /* ~"What about a tombstone then?"~ */ GOTO 16
  IF ~~ THEN REPLY #26579 /* ~"Never mind, then. I will leave you to your thoughts. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1 13.2 13.3 13.4 13.5
  SAY #26580 /* ~The Crier lapses into silence, and you watch as a lone tear builds at the corner of his eye. After a moment, he speaks, and his voice is like gravel, thick with emotion. "There... is truth in what you say." ~ */
  IF ~~ THEN REPLY #26581 /* ~"It is a difficult truth, both to hear and to accept."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #26582 /* ~The tear at the corner of his eyes suddenly vanishes - it happens so quickly you're not certain it was there. "Nonetheless, I shall accept it. And I shall see to it my brothers accept it as well."~ */
  IF ~  Global("Crier_Answer","GLOBAL",1)
~ THEN REPLY #26583 /* ~"Very well. Farewell, then."~ */ DO ~AddexperienceParty(750)
SetGlobal("Crier","GLOBAL",2)
EscapeArea()
~ JOURNAL #26585 /* ~I convinced the Crier of Es-Annon to give up his pilgrimage. There was no longer any need for him to roam the planes in an effort to prolong the memory of something that would be forgotten in any event. He agreed, and he will soon go to tell his brothers.~ */ EXIT
  IF ~  Global("Crier_Answer","GLOBAL",2)
~ THEN REPLY #26584 /* ~"Very well. Farewell, then."~ */ DO ~AddexperienceParty(750)
SetGlobal("Crier","GLOBAL",2)
EscapeArea()
~ JOURNAL #26586 /* ~I convinced the Crier of Es-Annon to give up his pilgrimage. I convinced him that he and the rest of the Criers should not place the memory of Es-Annon at risk by traveling the planes. He agreed, and he will soon go to tell his brothers.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.1 11.2 12.2 13.6
  SAY #26587 /* ~The Crier blinks. "Tomb... stone?"~ */
  IF ~~ THEN REPLY #26588 /* ~"It's a stone that records a man's name, his life, and a eulogy. If it serves a man, could it not also serve a city that has died?"~ */ GOTO 17
  IF ~~ THEN REPLY #26589 /* ~"It is no matter. Forget I spoke. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #26590 /* ~"Stones may do such things?"~ */
  IF ~~ THEN REPLY #26591 /* ~"Yes. And their lifetime is much longer than a man's. If its name was carved on stone, would Es-Annon's memory be served?"~ */ GOTO 18
  IF ~~ THEN REPLY #26592 /* ~"It is no matter. Forget I spoke. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #26593 /* ~The man pauses. "Would others see this name?"~ */
  IF ~~ THEN REPLY #26594 /* ~"Yes. It would be there for all to see, long after you have died."~ */ GOTO 19
  IF ~~ THEN REPLY #26595 /* ~"It is no matter. Forget I spoke. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #26596 /* ~The man nods. "If such a thing were possible..." He turns to you. "Where would one find such a stone?"~ */
  IF ~~ THEN REPLY #26597 /* ~"I could go look for one. If I find one, I could see to it that Es-Annon's name is carved upon it."~ */ GOTO 20
  IF ~~ THEN REPLY #26598 /* ~"In exchange for some coppers, I could go seek a tombstone and have Es-Annon's name carved upon it."~ */ GOTO 21
  IF ~~ THEN REPLY #26599 /* ~"It is no matter. Forget I spoke. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #26600 /* ~"You... you... would do this? I..." The man's eyes water up again. "You would be setting all the Criers of Es-Annon free. But a score of us remain... the burden of remembering would be over after so MANY years..."~ */
  IF ~~ THEN REPLY #26601 /* ~"I would do so. I will return when the name is carved."~ */ DO ~SetGlobal("Crier_Quest","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Crier_1","GLOBALGood",1)
~ JOURNAL #26539 /* ~I agreed to go find a tombstone on which to carve the name of Es-Annon for the Crier.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #26602 /* ~"You... you... would do this? I..." The man's eyes water up again. "You would be setting all the Criers of Es-Annon free. But three-score of us remain... the burden of remembering would be over after so MANY years... and all you would ask is some copper in return?"~ */
  IF ~~ THEN REPLY #26603 /* ~"Yes."~ */ DO ~SetGlobal("Crier_Quest","GLOBAL",1)
GivePartyGold(5)
IncrementGlobalOnceEx("GLOBALEvil_Crier_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #26604 /* ~"Never mind, I'll do it for free. I will return when the name is carved."~ */ DO ~SetGlobal("Crier_Quest","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Crier_1","GLOBALGood",1)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #26605 /* ~"Then you shall have it." The Crier reaches into his robe and draws forth five copper coins, which he counts off to you. "That is all I have. I hope it is enough."~ */
  IF ~~ THEN REPLY #26606 /* ~"It'll have to do. All right, I'll return when I have placed Es-Annon's name upon stone."~ */ JOURNAL #26608 /* ~In exchange for a small sum of copper, I agreed to go find a tombstone on which to carve the name of Es-Annon for the Crier. ~ */ EXIT
  IF ~~ THEN REPLY #26607 /* ~"The copper is all I wished for - there will be no tombstone for Es-Annon. Farewell."~ */ DO ~Enemy()
IncrementGlobalOnceEx("GLOBALEvil_Crier_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Crier_1","GLOBALLaw",-1)
Attack(Protagonist)
~ JOURNAL #26609 /* ~I agreed to go find a tombstone on which to carve the name of Es-Annon for the Crier for a sum of copper... but when the fool passed over his last remaining coins, I laughed at his foolishness and told him I would go on no such fool's errand. He should know better than to trust anyone in the Hive.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.2
  SAY #26611 /* ~Suddenly, there is a brief whisper in the air, and the man's eyes dry. One of the tears that ran on his cheek simply vanishes. "Then Es-Annon is served. I will tell my fellow Criers of the stone you have described. You have my gratitude."~ */
  IF ~  Global("Evil_Crier_1","GLOBAL",0)
~ THEN REPLY #26612 /* ~"Um... it did cost me some copper to see that the name of the city was carved on the stone. Do you think you could spare some to repay me?"~ */ DO ~GivePartyGold(5)
IncrementGlobalOnceEx("Evil_Crier_1","GLOBAL",-1)
~ GOTO 24
  IF ~~ THEN REPLY #26613 /* ~"It was nothing. Farewell... I hope you and your brothers spend the rest of your days peacefully."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #26615 /* ~He nods and reaches into his robe. "All I have is yours." He counts off five coppers and hands them to you. "Take this hand-in-hand with my gratitude." ~ */
  IF ~~ THEN REPLY #26616 /* ~"It was nothing... literally, it seems. Farewell."~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #26617 /* ~"You're welcome. Farewell."~ */ DO ~EscapeArea()
~ EXIT
END
