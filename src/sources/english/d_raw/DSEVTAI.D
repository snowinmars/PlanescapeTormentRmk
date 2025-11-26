// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSEVTAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSEVTAI~

IF ~  Global("Sevtai_Quest","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #25995 /* ~This woman's face looks broken, and she is covered in scars - they look like bite marks and fingernail cuts. She is cradling the shreds of several rags in her hands and is staring emptily at the wall of the monument, at the names there.~ */
  IF ~~ THEN REPLY #25996 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #25997 /* ~Leave the woman alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #26275 /* ~"Hssst! Get you back!" The woman's teeth peel back, displaying a row of black canines. "What you want of Sev'Tai?!"~ */
  IF ~~ THEN REPLY #26494 /* ~"What's the matter?"~ */ GOTO 2
  IF ~~ THEN REPLY #26495 /* ~"Sorry to disturb you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #26496 /* ~"What wrong?! Those Cos... Ca-ows... CHAOS-men wrecked my cart, attacked me, and killed three of my sisters who tried to stop them! Not sisters anymore - now they's nothing but names on this memorial wall!"~ */
  IF ~~ THEN REPLY #26497 /* ~"Chaosmen?"~ */ GOTO 3
  IF ~~ THEN REPLY #26498 /* ~"I mourn your loss. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #26499 /* ~"Chaosmen, a faction they says. What they ARE is an addled bunch that runs wild through the Hive and does whatevers they please! We never did no harm to them! Then they lope in like dogs and tear apart anything within their reach."~ */
  IF ~~ THEN REPLY #26500 /* ~"Who are these Chaosmen who attacked you?"~ */ GOTO 4
  IF ~~ THEN REPLY #26501 /* ~"I mourn your loss. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #26502 /* ~"They're a Hiver gang, a bunch of addled sods that call themselves the... the... 'Starved Dogs Barking' or some such barmy nonsense!"~ */
  IF ~~ THEN REPLY #26503 /* ~"You know, I wouldn't mind penning some men in the dead-book for some coin. You got the copper, we'll talk terms."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sevtai_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #26504 /* ~"Their actions were unjust. If you wish, I can see that the matter is rectified. If three deaths they caused, then three deaths shall these 'Starved Dogs' suffer."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sevtai_1","GLOBALLaw",1)
~ GOTO 5
  IF ~~ THEN REPLY #26505 /* ~"I'll keep an eye out for them... I mourn your loss. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #26506 /* ~"A copper earring in your purse if you pen three o' those murdering sods in the dead-book, jig?"~ */
  IF ~  GlobalGT("Kill_SDThug","GLOBAL",2)
~ THEN REPLY #26507 /* ~"Very well, but the mission is already done. I already killed three of them in the Hive not too long ago. They may have been the ones that killed your sisters."~ */ JOURNAL #26101 /* ~I ran into a strange woman, Sev'Tai, by the Dustman memorial outside the Mortuary. She was mourning the death of her three sisters, who had been attacked by a group of 'Chaosmen' called the Starved Dogs Barking. She asked me to kill three of their number, and I agreed... thing is, I had already encountered the Hivers she had mentioned before I spoke with her, so I'd fulfilled her request before she had even asked.~ */ GOTO 6
  IF ~~ THEN REPLY #26508 /* ~"I'll see to it that they're put in the dead-book. Can you tell me where they might be found?"~ */ DO ~SetGlobal("Sevtai_Quest","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #26509 /* ~"I don't think I can help you, Sev'Tai. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 8.0 8.1
  SAY #26510 /* ~"The powers be not blind in their justice this day!" The woman reaches into her spider-like hair and draws forth a copper earring. "Here you are. A pretty bit it should fetch. Tis worth thirty-three coppers at least, I'm sure. It belonged to one of me sisters... but she won't be needing it anymore."~ */
  IF ~  Global("Chaotic_Sevtai_1","GLOBAL",0)
~ THEN REPLY #26511 /* ~"Very well. Farewell, Sev'Tai."~ */ DO ~GiveItem("CopEar",Protagonist)
SetGlobal("Sevtai_Quest","GLOBAL",2)
AddexperienceParty(250)
~ EXIT
  IF ~  Global("Chaotic_Sevtai_1","GLOBAL",1)
~ THEN REPLY #26512 /* ~"Very well. Farewell, Sev'Tai."~ */ DO ~GiveItem("CopEar",Protagonist)
SetGlobal("Sevtai_Quest","GLOBAL",2)
AddexperienceParty(500)
~ JOURNAL #26100 /* ~I returned to Sev'Tai and claimed I'd killed the Starved Dogs. The fanged wench was so distraught and so desperate to believe them dead that she actually thought I had done as she asked. Foolish woman... at least she was good for a few coppers.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #26513 /* ~"Go out the south gate, spireward from here... then walk around the block until you comes to a place where men run in circles, howling at the Sig sky. There's the Starved Dogs, they are."~ */
  IF ~  GlobalGT("AR0400_Visited","GLOBAL",0)
~ THEN REPLY #26514 /* ~"Yeah, I've been to that block. It's the one with all the harlots and drunks south of here. I'll go there and return shortly."~ */ JOURNAL #26099 /* ~I ran into a strange woman, Sev'Tai, by the Dustman memorial outside the Mortuary. She was mourning the death of her three sisters, who had been attacked by a group of 'Chaosmen' called the Starved Dogs Barking. She asked me to kill three of their number, and I agreed. She said they could be found in the Hive block south of the memorial, the one with all the harlots and drunks.~ */ EXIT
  IF ~  Global("AR0400_Visited","GLOBAL",0)
~ THEN REPLY #26515 /* ~"I'll go look for them, then."~ */ JOURNAL #26098 /* ~I ran into a strange woman, Sev'Tai, by the Dustman memorial outside the Mortuary. She was mourning the death of her three sisters, who had been attacked by a group of 'Chaosmen' called the Starved Dogs Barking. She asked me to kill three of their number, and I agreed. She said they could be found in the Hive block south of the memorial, past the south gate.~ */ EXIT
END

IF ~  Global("Sevtai_Quest","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #26516 /* ~"You again..." The woman turns to face you, her lips peeling back in a snarl. "You have news for Sev'Tai?"~ */
  IF ~  GlobalGT("Kill_SDThug","GLOBAL",2)
~ THEN REPLY #26517 /* ~"I found the Starved Dogs Barking and penned three of them in the dead-book."~ */ JOURNAL #26520 /* ~I returned to Sev'Tai after killing three of the Starved Dogs. In exchange, she gave me a copper earring for my services and thanked me for avenging her sisters.~ */ GOTO 6
  IF ~  GlobalLT("Kill_SDThug","GLOBAL",3)
~ THEN REPLY #26518 /* ~Lie: "I found three of the Starved Dogs Barking and penned three of them in the dead-book."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sevtai_1","GLOBALLaw",-1)
~ GOTO 6
  IF ~  GlobalLT("Kill_SDThug","GLOBAL",3)
~ THEN REPLY #26519 /* ~"No good news yet. I'm still hunting down those Chaosmen."~ */ EXIT
END

IF ~  Global("Sevtai_Quest","GLOBAL",2)
~ THEN BEGIN 9 // from:
  SAY #26521 /* ~The fanged woman nods as she sees you. "Sev'Tai and her sisters give thanks to you for your justice."~ */
  IF ~~ THEN REPLY #26522 /* ~"Very well, Sev'Tai. Farewell."~ */ EXIT
END
