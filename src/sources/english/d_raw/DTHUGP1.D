// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGP1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGP1~

IF ~  Global("Porphiron_Necklace","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #26003 /* ~This heavy-set thug is swathed in rags, dyed red and black. He looks like he is made almost purely of muscle. He glowers at you as you approach. ~ */
  IF ~~ THEN REPLY #26004 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #26005 /* ~Leave the thug alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #26878 /* ~"An' how ken I help you then, guvner?" This man's face breaks into a sneer. "Looks t'me ye needs a healer."~ */
  IF ~  Global("Porphiron_Quest","GLOBAL",1)
HasItem("PorNeck","ThugP1")
~ THEN REPLY #26879 /* ~"You one of the ones who robbed a monk in the Hive? Took his prayer bead necklace?"~ */ GOTO 4
  IF ~~ THEN REPLY #26880 /* ~"I had some questions for you..."~ */ GOTO 2
  IF ~~ THEN REPLY #26881 /* ~"Wipe that sneer off your face or you'll be the one needing a healer, 'guvner.'"~ */ GOTO 3
  IF ~~ THEN REPLY #26882 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #26883 /* ~"Bar that! No time for askin' n' answerin', guvner." He spits at your feet. "Now PIKE OFF, ye clueless sod!"~ */
  IF ~  Global("Porphiron_Quest","GLOBAL",1)
HasItem("PorNeck","ThugP1")
~ THEN REPLY #26884 /* ~"You one of the ones who robbed a monk in the Hive? Took his prayer bead necklace?"~ */ GOTO 4
  IF ~~ THEN REPLY #26885 /* ~"Looks to me the one needing a pike is you."~ */ GOTO 3
  IF ~~ THEN REPLY #26886 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.1 4.0 11.0
  SAY #26887 /* ~"I'd be watchin' where ye be lettin' those threats fly, guvner. Ye let another one slip yer tongue, and I'll give ye a second smile, jig?"~ */
  IF ~~ THEN REPLY #26888 /* ~"If you think you can take me, come on."~ */ DO ~Help()
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #26889 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0
  SAY #26890 /* ~"Some sod wit lines scrawled all over 'is face? Claimed he coulda put us all in the dead-book, yet lets us bob 'im blind?" The man gives a slow, toothless smile. "Never even heard of such a sod, I haven't."~ */
  IF ~~ THEN REPLY #26891 /* ~"Maybe you'd better give me back his necklace before *I* put you all in the dead-book."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #26892 /* ~Lie: "That *is* interesting. The rest of his order is looking for you; the brothers of *Erit-Agge* seem to know you quite well."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_PorThug_1","GLOBALLaw",-1)
~ GOTO 8
  IF ~  CheckStatGT(Protagonist,9,CHR)
~ THEN REPLY #26893 /* ~"Perhaps we can come to an agreement. The necklace is of no value to anyone not of his order. Perhaps I could buy it from you."~ */ GOTO 5
  IF ~~ THEN REPLY #26894 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2
  SAY #26895 /* ~The man frowns. "No, I'm attached to it, I am. Can't let it go... 'cept for a hefty bit a coin. Say, fifteen copper?"~ */
  IF ~  PartyGoldGT(14)
~ THEN REPLY #26896 /* ~"Done."~ */ GOTO 6
  IF ~  PartyGoldGT(10)
~ THEN REPLY #26897 /* ~"How about ten?"~ */ GOTO 7
  IF ~~ THEN REPLY #26898 /* ~Bluff: "No, not worth it. I'll let the rest of his order look for you - I think the brothers of *Erit-Agge* will be able to make an arrangement with you, but it won't be to your liking."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thug_1","GLOBALLaw",-1)
~ GOTO 8
  IF ~  PartyGoldLT(15)
~ THEN REPLY #26899 /* ~"I can't meet your price. Perhaps another time."~ */ EXIT
  IF ~  PartyGoldGT(14)
~ THEN REPLY #26900 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #26901 /* ~"Right then, it's a deal. Here you go..."~ */
  IF ~~ THEN REPLY #26902 /* ~"Thanks."~ */ DO ~TakePartyGold(15)
SetGlobal("Porphiron_Necklace","GLOBAL",3)
AddexperienceParty(500)
GiveItem("PorNeck",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #26903 /* ~"Eh, well... all right. It's an ugly thing anyways. Here you go..."~ */
  IF ~~ THEN REPLY #26904 /* ~"Thanks."~ */ DO ~TakePartyGold(10)
SetGlobal("Porphiron_Necklace","GLOBAL",3)
GiveItem("PorNeck",Protagonist)
AddexperienceParty(500)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 5.2
  SAY #26905 /* ~"Eh?" The man's sneer fades. "What're ye on about? Wot brothers? The sod was alone, he was."~ */
  IF ~~ THEN REPLY #26906 /* ~Lie: "He's a member of a religious order, you fool. That 'necklace' you stole is their most holy relic. If it isn't returned, the REST of his order'll come looking for you... and they don't have any reservations about killing thieves."~ */ DO ~AddexperienceParty(500)
GiveItem("PorNeck",Protagonist)
SetGlobal("Porphiron_Necklace","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #26907 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #26908 /* ~The man's eyes widen. "Eh... now... we was just keepin' the relic for 'im." He reaches into the fold of his robe and pulls forth the necklace, which he hands carefully to you. "Here it is, no harm done, eh?"~ */
  IF ~~ THEN REPLY #26909 /* ~Lie: "I hope this is enough to call off the rest of his Order. Perhaps a donation to their cause is in order as well. It might help smooth things over and ward off any curses that might come your way."~ */ DO ~GivePartyGold(10)
SetGlobal("Porphiron_Necklace","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALChaotic_Thug_2","GLOBALLaw",-1)
~ JOURNAL #26912 /* ~I talked to one of the thugs about Porphiron's necklace and convinced him through a series of... harmless... lies that if he didn't return the necklace, the more 'militant' brothers in Porphiron's order would be coming for him.~ */ GOTO 10
  IF ~~ THEN REPLY #26910 /* ~"Your wisdom could move mountains. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #26913 /* ~"Curses?!" The man makes a semi-circle over his heart. "Eh, well, now, wouldn't want any o' that..." He reaches into a purse at his belt, and hands over several copper coins. "Take it wit me blessing, guvner. Tell 'im no harm was meant."~ */
  IF ~~ THEN REPLY #26914 /* ~"Your donation is appreciated. Farewell."~ */ DO ~AddexperienceParty(250)
~ EXIT
END

IF ~  GlobalGT("Porphiron_Necklace","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #26915 /* ~This heavy-set thug is swathed in rags, dyed red and black. He looks like he is made almost purely of muscle. He glowers at you as you approach and bites his thumb. "Pike off, guvner. I got nothing more to say to ye!"~ */
  IF ~~ THEN REPLY #26916 /* ~"Looks to me the one needing a pike is you."~ */ GOTO 3
  IF ~~ THEN REPLY #26917 /* ~"Very well. Farewell."~ */ EXIT
END
