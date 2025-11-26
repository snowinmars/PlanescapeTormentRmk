// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYOBOY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DYOBOY~

IF ~  Global("YoBoy","AR0600",0)
~ THEN BEGIN 0 // from:
  SAY #46037 /* ~This young but well-muscled 'thug' - while certainly well-armed and large enough to be dangerous - seems awfully clean for a typical street tough. He's carrying a massive axe in one hand and a steel box in the other. As you near him, he puffs up and scowls at you. "What are you looking at, 'sod'? 'Pike off,' before I've to 'scrag' you!"~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN EXTERN ~DANNAH~ 216
  IF ~  !NearbyDialog("DAnnah")
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46097 /* ~"You seem a little well-groomed for a thug."~ */ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #46098 /* ~"Calm down... I just had some questions..."~ */ GOTO 2
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #46099 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #46042 /* ~He glares daggers at Annah, but says nothing.~ */
  IF ~~ THEN REPLY #46043 /* ~"You *do* seem a little well-groomed for a thug."~ */ GOTO 2
  IF ~~ THEN REPLY #46044 /* ~"Calm down... I just had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #46045 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.2 1.0 1.1 12.0 12.1 14.0
  SAY #46046 /* ~"Stop shaking your 'bone-box,' leatherhead! This is *my* territory and you'll be leaving it quick, if you don't want my 'bloods' to tear you apart!"~ */
  IF ~  NearbyDialog("Dannah")
~ THEN EXTERN ~DANNAH~ 217
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DAnnah")
!Global("YoBoy","AR0600",3)
~ THEN REPLY #46100 /* ~"I'm just wondering what's in that box you've got."~ */ GOTO 4
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #46101 /* ~"No, I think I'll just stick around."~ */ GOTO 3
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #46102 /* ~"Fine, I'll leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.2 6.2 7.2 8.3
  SAY #46051 /* ~His face flushes angrily as he gnashes his teeth in frustration. "That's it - you've 'piking' asked for it! Get him, bloods!" He raises his axe and leaps to attack!~ */
  IF ~~ THEN REPLY #46052 /* ~Fight.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #46053 /* ~Flee.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #46054 /* ~He raises an eyebrow and looks to the box, shrugging. "I don't know, and I can't get the 'piking' thing open... I think it's a 'piking' talking head, but I dropped it and it went silent. I was hoping to sell it to the Curiosity Shop, but Vris didn't 'piking' want it. Are you interested? A hundred coppers and I'll hand it over."~ */
  IF ~~ THEN REPLY #46055 /* ~"Wait - how'd you get this thing?"~ */ GOTO 5
  IF ~  Global("Mertwyn","GLOBAL",1)
~ THEN REPLY #46056 /* ~"That's the head from that body in the Festhall, isn't it?"~ */ GOTO 6
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46057 /* ~"Sure, I'll take it."~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~~ THEN REPLY #46058 /* ~"No thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #46059 /* ~The young thug looks sheepish for a moment - a laughable expression on him, considering his massive frame. "I... found it. Not as if it's any of your 'piking' business, 'sod!' Do you want it or not? One hundred coins, or I'll just keep the 'piking' thing."~ */
  IF ~  Global("Mertwyn","GLOBAL",1)
~ THEN REPLY #46060 /* ~"That's the head from that body in the Festhall, isn't it?"~ */ GOTO 6
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46061 /* ~"Sure, I'll take it."~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~~ THEN REPLY #46062 /* ~"No thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0
  SAY #46063 /* ~He snarls at you, flecks of spittle spattering his lips as he shouts. "I don't 'piking' know! Who cares?! I just found the 'sodding' thing... and what I find, I keep. It's mine by right, now! You want it? You *buy* it. One hundred 'jinks,' 'berk.'"~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46064 /* ~"Sure, I'll take it."~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46065 /* ~"What do you say we have a contest for it?"~ */ GOTO 7
  IF ~~ THEN REPLY #46066 /* ~"How about I just beat you senseless and take it?"~ */ GOTO 3
  IF ~~ THEN REPLY #46067 /* ~"No thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #46068 /* ~"Eh?"~ */
  IF ~~ THEN REPLY #46069 /* ~"A contest. How about this: take that axe and give me one good strike, anywhere you'd like. If I can still get up and take that box, it's mine... else you're the new owner of anything I've got on me."~ */ GOTO 8
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46070 /* ~"Never mind. I'll just buy it."~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~~ THEN REPLY #46071 /* ~"Forget it. I'll just beat you senseless and take it."~ */ GOTO 3
  IF ~~ THEN REPLY #46072 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #46073 /* ~He looks at his axe, then you, very skeptically.~ */
  IF ~  HPGT(Protagonist,15)
~ THEN REPLY #46074 /* ~"What, are you worried I'm some sort of 'immortal being' whom your axe can't possibly hurt? Just *look* at me."~ */ DO ~Damage(Protagonist,LOWER,15)
SetAnimState(Myself,ANIM_MIMEATTACK1)
SetAnimState(Protagonist,ANIM_MIMEGETHIT)
AddexperienceParty(1000)
~ GOTO 10
  IF ~  HPLT(Protagonist,16)
~ THEN REPLY #46075 /* ~"What, are you worried I'm some sort of 'immortal being' whom your axe can't possibly hurt? Just *look* at me."~ */ DO ~Damage(Protagonist,LOWER,15)
SetAnimState(Myself,ANIM_MIMEATTACK1)
SetAnimState(Protagonist,ANIM_MIMEGETHIT)
~ GOTO 9
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46076 /* ~"Never mind. I'll just buy it."~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~~ THEN REPLY #46077 /* ~"Forget it. I'll just beat you senseless and take it."~ */ GOTO 3
  IF ~~ THEN REPLY #46078 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #46079 /* ~The thug buries his heavy axe into you, the blade hacking through tissue and bone in one mighty stroke - leaving you dead.~ */
  IF ~~ THEN REPLY #46080 /* ~Fall into darkness...~ */ DO ~SetGlobal("YoBoy","AR0600",2)
TakePartyGold(10000)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #46081 /* ~The thug buries his heavy axe into you, the blade hacking through tissue and bone in one mighty stroke. You stagger, cough up half a lungful of blood - and then grin at the burly young man. He stares in shock as you motion for him to hand you the steel box.~ */
  IF ~~ THEN REPLY #46082 /* ~"I'll be taking that box, now. Too bad you didn't realize I was some sort of 'immortal being' whom your axe can't possibly hurt, eh? Farewell."~ */ DO ~GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ EXIT
  IF ~~ THEN REPLY #46083 /* ~Take it and leave him standing there, dumbfounded.~ */ DO ~GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.2 5.1 6.0 7.1 8.2
  SAY #46084 /* ~The burly young thug snatches your coppers away and tosses you the steel box. "Now get out of here. I don't want to 'piking' talk to you again, 'berk'."~ */
  IF ~~ THEN REPLY #46085 /* ~"Yes, yes; whatever you say. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #46086 /* ~Leave.~ */ EXIT
END

IF ~  Global("YoBoy","AR0600",1)
~ THEN BEGIN 12 // from:
  SAY #46087 /* ~The burly young thug sneers as you approach him. "You again?! 'Pike off', 'berk'!"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46088 /* ~"You seem a little well-groomed for a thug."~ */ GOTO 2
  IF ~~ THEN REPLY #46089 /* ~"Calm down... I just had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #46090 /* ~Leave.~ */ EXIT
END

IF ~  Global("YoBoy","AR0600",3)
~ THEN BEGIN 13 // from:
  SAY #46091 /* ~The burly young thug sneers as you approach him. "Shake your 'piking' 'bone-box' all you want, 'berk'. I'm not 'chanting' with you."~ */
  IF ~~ THEN REPLY #46092 /* ~"Whatever you say. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #46093 /* ~Leave.~ */ EXIT
END

IF ~  Global("YoBoy","AR0600",2)
~ THEN BEGIN 14 // from:
  SAY #61592 /* ~The burly young thug sneers as you approach him. "You again?! 'Pike-'" He suddenly stops and narrows his eyes at you, scratching at his head. "Say... didn't I... but..."~ */
  IF ~~ THEN REPLY #61593 /* ~"Yes, yes, I know. I have some questions..."~ */ DO ~SetGlobal("YoBoy","AR0600",1)
~ GOTO 2
  IF ~~ THEN REPLY #61594 /* ~"Yes, you did - and now you're going to pay dearly for it."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #61595 /* ~Leave.~ */ DO ~SetGlobal("YoBoy","AR0600",1)
~ EXIT
END
