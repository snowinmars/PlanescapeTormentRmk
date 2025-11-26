// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCROG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCROG~

IF ~  !Global("Curst_Rogue_Paid","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #10037 /* ~You see a roguish-looking man. As you watch him, you begin to think he could be keeping an eye on a nearby building.~ */
  IF ~~ THEN REPLY #10038 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #10039 /* ~Leave him be.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #10040 /* ~He seems friendly enough as he returns your greeting. "Good day to you as well." He turns and starts to walk away from you.~ */
  IF ~~ THEN REPLY #10041 /* ~"Just a moment, please. I wanted to ask you a question."~ */ GOTO 2
  IF ~~ THEN REPLY #10042 /* ~Let him leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #10043 /* ~He stops and turns to you with a friendly smile. "Certainly, how can I help you?" You notice his arms hang a bit unnaturally at his side. To your practiced eye, it looks like he's ready to draw a concealed weapon.~ */
  IF ~~ THEN REPLY #10044 /* ~"Were you just watching that building there?"~ */ GOTO 3
  IF ~~ THEN REPLY #10045 /* ~"I'm looking for a deva. I've been told he's in Curst."~ */ GOTO 9
  IF ~~ THEN REPLY #10046 /* ~"Never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #10047 /* ~He looks at you with some surprise. "Why, no, as a matter of fact I wasn't. Why? Is there something of interest going on there?" He turns and begins to examine the building you indicated.~ */
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #10048 /* ~"Come on. I'm no fool. You're casing the joint!"~ */ GOTO 4
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #10049 /* ~"Oh really."~ */ EXTERN ~DANNAH~ 78
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #10050 /* ~"Never mind, my mistake. I do have a question for you though. I'm looking for a deva that may be in town."~ */ GOTO 9
  IF ~~ THEN REPLY #10051 /* ~"Sorry, my mistake. I've got to go."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #10052 /* ~He looks at you and seems to measure your worth. He then makes a deft gesture with his hands and looks at you innocently. Glancing down you notice the glint of coins in his sleeve. "I assure you that you are mistaken, friend. I'm just enjoying a walk on this fine day."~ */
  IF ~~ THEN REPLY #10053 /* ~"Yes, I'm sure you're right. My apologies... friend."~ */ DO ~SetGlobal("Curst_Rogue_Paid","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #10054 /* ~"No, I'm almost positive that's what you were doing."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #10055 /* ~He steps forward and give you a friendly pat on the back. As he does, you feel the weight of your purse increase. "Then I bid you farewell, friend. Until next we meet."~ */
  IF ~~ THEN REPLY #10056 /* ~"Farewell."~ */ DO ~GivePartyGold(25)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #10057 /* ~He frowns at you. "Then I should... double my efforts to convince you otherwise. Know, however, that I shall go no further in my efforts to sway you." Another deft move and you see the glint of coin in both his sleeves.~ */
  IF ~~ THEN REPLY #10058 /* ~"Why, yes. I'm sure that you were just enjoying a walk as you said."~ */ DO ~SetGlobal("Curst_Rogue_Paid","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10059 /* ~"No, I know what I saw."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #10060 /* ~He steps forward and gives you a friendly pat on the back. As he does, you feel the weight of your purse increase. "Then I bid you farewell, friend. Until next we meet."~ */
  IF ~~ THEN REPLY #10061 /* ~"Farewell."~ */ DO ~GivePartyGold(50)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #10062 /* ~He frowns at you and makes a gesture with both arms. The glint of gold is replaced by the glint of steel. "I'm sorry we couldn't come to terms."~ */
  IF ~~ THEN REPLY #10063 /* ~"Not as sorry as you'll be."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.1 3.2 11.1
  SAY #10064 /* ~He looks at you in surprise. "Really... I find that quite remarkable. This isn't the type of place one would expect to find a deva. However, if that were the case you should inquire at the Traitor's Gate Inn. I understand they broker information such as you seek."~ */
  IF ~~ THEN REPLY #10065 /* ~"Thanks, I'll do that."~ */ EXIT
  IF ~~ THEN REPLY #10066 /* ~"Where can I find this place?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #10067 /* ~"Sorry friend, I haven't been there myself so I don't rightly know. But you're in the right area. Just look around."~ */
  IF ~~ THEN REPLY #10068 /* ~"My thanks and farewell."~ */ EXIT
END

IF ~  Global("Curst_rogue_paid","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #10069 /* ~The rogue looks a little disturbed at seeing you again. "Well, if it isn't my old friend. Come to pay me a visit again? I appreciate the courtesy but I am trying to work here, you know."~ */
  IF ~~ THEN REPLY #10070 /* ~"I'm here for money, not conversation."~ */ GOTO 12
  IF ~~ THEN REPLY #10072 /* ~"I'm looking for a deva. I've heard there's one here in Curst."~ */ GOTO 9
  IF ~~ THEN REPLY #10073 /* ~"Sorry to bother you, just thought I'd say hello."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #10071 /* ~He frowns at you and takes on a very serious tone. "Listen, friend. You found me out and, as one professional to another, I paid you to let me be. Let's leave it at that and stay friends."~ */
  IF ~~ THEN REPLY #10074 /* ~"All right. I'll be leaving then."~ */ EXIT
  IF ~~ THEN REPLY #10075 /* ~"I don't think so. Hand over some gold or I take you down."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #10076 /* ~"I'm sorry we couldn't come to terms."~ */
  IF ~~ THEN REPLY #10077 /* ~"Not as sorry as you'll be."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END
