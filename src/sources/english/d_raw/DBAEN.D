// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBAEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBAEN~

IF ~  Global("Baen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #21485 /* ~You see a heavy-set man with sharp features and a pained expression. Despite his huge frame, however, he has an effeminate look about him, and unlike the other residents you've seen, he looks to have bathed recently. As you approach, he looks up hopefully and calls out in a high voice: "Craddock... good sir?"~ */
  IF ~~ THEN REPLY #21486 /* ~"What?"~ */ DO ~SetGlobal("Baen","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #22732 /* ~Ignore the man, pass on by.~ */ DO ~SetGlobal("Baen","GLOBAL",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #22733 /* ~"Eh..." His hopeful expression dies as he studies your face. "A thousand apologies, good sir, if I have given offense." He gives a slight bow. "I am called Baen the Sender, third child of Dai'Baen the Sender. I am one of the many runners in the employ of the House of Senders."~ */
  IF ~~ THEN REPLY #22734 /* ~"No apologies necessary, Baen. What do you want?"~ */ GOTO 4
  IF ~~ THEN REPLY #22735 /* ~"You haven't offended me... yet. What do you want?"~ */ GOTO 4
  IF ~~ THEN REPLY #22736 /* ~"Look, I must take my leave, Baen..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #22737 /* ~As you are about to pass on by, the man calls out, stronger this time. His voice almost squeaks with the effort. "Craddock?! Good sir, I bear a message for you!"~ */
  IF ~~ THEN REPLY #22738 /* ~"What are you talking about?"~ */ GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY #22739 /* ~"But a moment of your time, good sir. I am in search of an overseer, Craddock, who is said to be found in the Hive, but alas... he eludes me. Have you heard of such a man?"~ */
  IF ~~ THEN REPLY #22740 /* ~"No."~ */ GOTO 5
  IF ~~ THEN REPLY #22741 /* ~"I'm sorry..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.0 1.1
  SAY #22742 /* ~"A thousand apologies for troubling you with such a trivial matter, but I seek Craddock, an overseer in the Hive..." Baen looks like he is in pain. "But alas, he eludes me." He looks at you hopefully again. "Could it be you have you heard of such a man?"~ */
  IF ~~ THEN REPLY #22743 /* ~"No."~ */ GOTO 5
  IF ~~ THEN REPLY #22744 /* ~"I'm sorry, I haven't."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.0 3.1 4.0 4.1
  SAY #22745 /* ~Baen gives a deep sigh. "I am bound to deliver a message to him, and as yet, fortune has chosen not to favor me..."~ */
  IF ~~ THEN REPLY #22746 /* ~"I could help you... if I come across the man, I could pass along your message."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Baen_1","GLOBALGood",1)
~ GOTO 7
  IF ~~ THEN REPLY #22747 /* ~"I might be able to find him and deliver your message... for a price."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Baen_1","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #22748 /* ~"I can't help you... look, I must take my leave."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #22749 /* ~"Of course, good sir, a thousand apologies for keeping you." Baen nods. "Thank you for your time."~ */
  IF ~~ THEN REPLY #22750 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 12.0
  SAY #22751 /* ~Baen face lights up like a lantern. "Oh, fortunate day for Baen and the House of Senders! Any assistance you could provide would be most welcome! If you can find this Craddock and pass along the message, I shall see to it you are paid for your troubles."~ */
  IF ~~ THEN REPLY #22752 /* ~"All right... what's the message?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 5.1 12.1
  SAY #22753 /* ~Baen face lights up like a lantern. "Of course, good sir. If you can find this Craddock and pass along the message, I shall pay you for your troubles."~ */
  IF ~~ THEN REPLY #22754 /* ~"All right... what's the message?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 7.0 8.0
  SAY #22755 /* ~Baen recites the message almost like a mantra: *"The shipment must be in Curst by the third-day or there will be a penalty."* Baen frowns. "I am told that Craddock will know of the 'shipment' to which the message pertains."~ */
  IF ~~ THEN REPLY #22756 /* ~"If I see Craddock, I will pass along the message. Is there anything you can tell me about him before I go that might help me find him?"~ */ DO ~SetGlobal("Baen_Quest","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 13.1
  SAY #22757 /* ~"He is said to be a *giant* of a man, stern of features. That he is an overseer in one of the Hive marketplaces. Alas, I know little else than that, good sir."~ */
  IF ~~ THEN REPLY #22758 /* ~"I see. That's enough to go on for now."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #22759 /* ~Baen bows. "Thank you, sir. Should fortune favor you and you are able to bear the message to Craddock, be so kind as to return and tell me of it. I will see to it your efforts are rewarded."~ */
  IF ~~ THEN REPLY #22760 /* ~"Very well. Farewell, Baen."~ */ JOURNAL #22761 /* ~I agreed to deliver the message to Craddock if I should see him. Baen said he was an overseer in a marketplace somewhere in the Hive. I'll keep my eye out for it.~ */ EXIT
END

IF ~  GlobalGT("Baen","GLOBAL",0)
Global("Baen_Quest","GLOBAL",0)
~ THEN BEGIN 12 // from:
  SAY #22762 /* ~You see Baen the Sender. As you approach, he looks at you hopefully... but he does not address you. ~ */
  IF ~~ THEN REPLY #22763 /* ~"Look, if you still need help finding... Craddock, right? If you need help finding him, I'll help you."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Baen_1","GLOBALGood",1)
~ GOTO 7
  IF ~~ THEN REPLY #22764 /* ~"I changed my mind. I'll help you find this Craddock... for a price."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Baen_1","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #22765 /* ~Ignore him.~ */ EXIT
END

IF ~  GlobalGT("Baen","GLOBAL",0)
GlobalGT("Baen_Quest","GLOBAL",0)
GlobalLT("Baen_Quest","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #22766 /* ~You see Baen the Sender. As you approach, he looks at you hopefully. "Were you successful in finding Craddock, good sir?"~ */
  IF ~  Global("Baen_Quest","GLOBAL",2)
~ THEN REPLY #22767 /* ~"Yes, and I passed along your message, although it didn't seem to please him any."~ */ DO ~SetGlobal("Baen_Quest","GLOBAL",3)
AddexperienceParty(500)
~ JOURNAL #22770 /* ~I returned and told Baen I had delivered the message to Craddock. He was pleased and rewarded me with a sum of copper. Not bad pay for just relaying a message to someone.~ */ GOTO 14
  IF ~~ THEN REPLY #22768 /* ~"Not yet, Baen. What can you tell me about him again?"~ */ GOTO 10
  IF ~~ THEN REPLY #22769 /* ~"No... I'm still looking for him. I'll return if I find him."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #22771 /* ~Baen doesn't seem to have heard any word after *yes,* for he smiles and heaves a sigh of relief. "Good fortune indeed! Thank you, good sir, thank you." He reaches into his robe and pulls forth a handful of coppers, which he counts out, then hands to you.~ */
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #22772 /* ~"Fifteen commons for delivering a message, eh? Fair enough."~ */ DO ~GivePartyGold(15)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,10,CHR)
CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #22773 /* ~"Thirty commons for delivering a message, eh? Fair enough."~ */ DO ~GivePartyGold(30)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #22774 /* ~"Forty-five commons for delivering a message, eh? Fair enough."~ */ DO ~GivePartyGold(45)
~ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 14.2
  SAY #22775 /* ~"Oh, *more* than fair, good sir, more than fair! I can say without hesitation that there is no finer profession in all Sigil than that of a runner for the House of Senders!"~ */
  IF ~~ THEN REPLY #22776 /* ~"I'll keep that in mind. Farewell, Baen."~ */ EXIT
END

IF ~  GlobalGT("Baen","GLOBAL",0)
Global("Baen_Quest","GLOBAL",3)
~ THEN BEGIN 16 // from:
  SAY #22777 /* ~You see Baen the Sender. As you approach, he nods respectfully to you. "Well met, good sir. A thousand thanks for helping me find Craddock and delivering the message to him." ~ */
  IF ~~ THEN REPLY #22778 /* ~"No trouble. Farewell, Baen."~ */ EXIT
END
