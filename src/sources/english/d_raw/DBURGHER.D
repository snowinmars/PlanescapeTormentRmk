// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBURGHER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBURGHER~

IF ~  NumTimesTalkedTo(0)
GlobalGT("Berrog_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #57017 /* ~You see an aging githzerai, trapped under the wheels of a wagon that must have fallen on him during the chaos. He spits a bloody wad, and grins up at you. "Not going to help me, are you? That's what brought us here in the first place..." He laughs weakly.~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57018 /* ~"Who are you?"~ */ EXTERN ~DDAKKON~ 186
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57019 /* ~"Who are you?"~ */ GOTO 4
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57020 /* ~"Relax. I'll pull you out."~ */ EXTERN ~DDAKKON~ 187
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57021 /* ~"Relax. I'll pull you out."~ */ GOTO 5
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57022 /* ~"No, I'm not."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 187
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57023 /* ~"No, I'm not."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("Berrog_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #57024 /* ~The githzerai coughs again. "Have you come to mock me again? I'll not give you the satisfaction."~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57025 /* ~"Who are you?"~ */ EXTERN ~DDAKKON~ 186
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57026 /* ~"Who are you?"~ */ GOTO 4
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57027 /* ~"Relax. I'll pull you out."~ */ EXTERN ~DDAKKON~ 187
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57028 /* ~"Relax. I'll pull you out."~ */ GOTO 5
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57029 /* ~"No, I'm not."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 187
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57030 /* ~"No, I'm not."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from:
  SAY #57031 /* ~"Yes, put the blade away, *zerth* dog. I spit on your teachings. Wear your chains a little longer." The githzerai turns his head toward you. "I am Tovus Giljaf. I used to be the Burgher of this town... until the accursed deva broke free."~ */
  IF ~~ THEN REPLY #57032 /* ~"What can you tell me of the deva?"~ */ GOTO 8
  IF ~~ THEN REPLY #57033 /* ~"You were the Burgher?"~ */ GOTO 9
  IF ~~ THEN REPLY #57034 /* ~"I can't say I think much of your town."~ */ GOTO 10
  IF ~~ THEN REPLY #57035 /* ~"Let me get you out of there."~ */ GOTO 5
  IF ~~ THEN REPLY #57036 /* ~"In that case, I'll leave you to die. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #57038 /* ~"Yes, kill me, *zerth* dog. Do as your master orders." The old githzerai cackles bloodily until Dak'kon slashes his throat.~ */
  IF ~~ THEN REPLY #57039 /* ~"Well struck, Dak'kon."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
SetAnimState(Myself,ANIM_MIMEDIE)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1
  SAY #57040 /* ~"I am Tovus Giljaf. I used to be the Burgher of this town... until the accursed deva broke free."~ */
  IF ~~ THEN REPLY #57041 /* ~"What can you tell me of the deva?"~ */ GOTO 8
  IF ~~ THEN REPLY #57042 /* ~"You were the Burgher?"~ */ GOTO 9
  IF ~~ THEN REPLY #57043 /* ~"I can't say I think much of your town."~ */ GOTO 10
  IF ~~ THEN REPLY #57044 /* ~"Let me get you out of there."~ */ GOTO 5
  IF ~~ THEN REPLY #57045 /* ~"In that case, I'll leave you to die. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.3 2.3 4.3 8.0 9.0 10.0
  SAY #57046 /* ~His thin mouth compresses further still. "Then lift, damn you, and be done."~ */
  IF ~~ THEN REPLY #57047 /* ~"Let's do it."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
IncrementGlobalOnceEx("GLOBALGood_Burgher_1","GLOBALGood",1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(125000)
SetGlobal("Cart_Trap","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #57048 /* ~"Forget it. Maybe I'll come back later."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.5 1.5 8.2 9.2 10.2
  SAY #57049 /* ~"Then I curse you, scarred man, and wish all the plagues of pestilence upon you." He spits a bloody wad at you and misses.~ */
  IF ~~ THEN REPLY #57050 /* ~"So long."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #57051 /* ~You throw your weight against the cart, and manage to lift it enough for him to squirm out from underneath.

"My thanks... human. I go now to the walls to aid my guards. My city shall not perish." He gives you a crooked smile. "I do not envy you the conflict with the deva. He is a fearsome opponent. Here. Take this. It may aid you."~ */
  IF ~~ THEN REPLY #57052 /* ~"Farewell."~ */ DO ~GiveItem("SPWI803",Protagonist)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.0 4.0 9.1 10.1
  SAY #57053 /* ~"We had imprisoned it, oh so many years ago. I thought it perfectly hidden from all sniffing dogs and traitors. Suddenly it burst from under the earth, blazing, and my beautiful, beautiful home... slid." He looks at you intently. "I would have my revenge. Free me, yes?"~ */
  IF ~~ THEN REPLY #57054 /* ~"All right. Get ready."~ */ GOTO 5
  IF ~~ THEN REPLY #57055 /* ~"You were the Burgher of this town?"~ */ GOTO 9
  IF ~~ THEN REPLY #57056 /* ~"No, I don't think so."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 2.1 4.1 8.1
  SAY #57057 /* ~"My compatriots... and I... we were using this city as a base to return ourselves to power... but that is another story for another day. Free me!"~ */
  IF ~~ THEN REPLY #57058 /* ~"All right. Get ready."~ */ GOTO 5
  IF ~~ THEN REPLY #57059 /* ~"What can you tell me of the deva?"~ */ GOTO 8
  IF ~~ THEN REPLY #57060 /* ~"No, I don't think so."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 2.2 4.2
  SAY #57061 /* ~"I don't either... but it's mine, and to see it lost to that preening, self-righteous deva... it is more than I can bear." He coughs wetly. "Free me, and I shall aid you in your revenge on him. My guards can hold off the monsters for a time."~ */
  IF ~~ THEN REPLY #57062 /* ~"All right. Get ready."~ */ GOTO 5
  IF ~~ THEN REPLY #57063 /* ~"What can you tell me of the deva?"~ */ GOTO 8
  IF ~~ THEN REPLY #57064 /* ~"No, I don't think so."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 11 // from:
  SAY #57065 /* ~You see an aging githzerai, trapped under the wheels of a wagon that must have fallen on it during the chaos. He spits a bloody wad, and grins up at you. "Not going to help me, are you? That's what brought us here in the first place..." He laughs weakly.~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57066 /* ~"Who are you?"~ */ EXTERN ~DDAKKON~ 188
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57067 /* ~"Who are you?"~ */ GOTO 15
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57068 /* ~"Relax. I'll pull you out."~ */ EXTERN ~DDAKKON~ 189
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57069 /* ~"Relax. I'll pull you out."~ */ GOTO 16
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57070 /* ~"No, I'm not."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 189
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57071 /* ~"No, I'm not."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #57072 /* ~The githzerai coughs bloodily again. "Have you come to mock me again? I'll not give you the satisfaction."~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57073 /* ~"Who are you?"~ */ EXTERN ~DDAKKON~ 188
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57074 /* ~"Who are you?"~ */ GOTO 15
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57075 /* ~"Relax. I'll pull you out."~ */ EXTERN ~DDAKKON~ 189
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57076 /* ~"Relax. I'll pull you out."~ */ GOTO 16
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57077 /* ~"No, I'm not."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 189
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57078 /* ~"No, I'm not."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 13 // from:
  SAY #57079 /* ~"Yes, put the blade away, *zerth* dog. I spit on your teachings. Wear your chains a little longer." The githzerai turns his head toward you. "I am Tovus Giljaf. I used to be the Burgher of this town... until the accursed deva broke free."~ */
  IF ~~ THEN REPLY #57080 /* ~"What can you tell me of the deva?"~ */ GOTO 19
  IF ~~ THEN REPLY #57081 /* ~"You were the Burgher?"~ */ GOTO 20
  IF ~~ THEN REPLY #57082 /* ~"I can't say I think much of your town."~ */ GOTO 21
  IF ~~ THEN REPLY #57083 /* ~"Let me get you out of there."~ */ GOTO 16
  IF ~~ THEN REPLY #57084 /* ~"In that case, I'll leave you to die. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #57085 /* ~"Yes, kill me, *zerth* dog. Do as your master orders." The old githzerai cackles bloodily until Dak'kon slashes his throat.~ */
  IF ~~ THEN REPLY #57086 /* ~"Well struck, Dak'kon."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
SetAnimState(Myself,ANIM_MIMEDIE)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.1 12.1
  SAY #57087 /* ~"I am Tovus Giljaf. I used to be the Burgher of this town... until the accursed deva broke free."~ */
  IF ~~ THEN REPLY #57088 /* ~"What can you tell me of the deva?"~ */ GOTO 19
  IF ~~ THEN REPLY #57089 /* ~"You were the Burgher?"~ */ GOTO 20
  IF ~~ THEN REPLY #57090 /* ~"I can't say I think much of your town."~ */ GOTO 21
  IF ~~ THEN REPLY #57091 /* ~"Let me get you out of there."~ */ GOTO 16
  IF ~~ THEN REPLY #57092 /* ~"In that case, I'll leave you to die. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.3 12.3 13.3 15.3 19.0 20.0 21.0
  SAY #57093 /* ~His thin mouth compresses further still. "Then lift, damn you, and be done."~ */
  IF ~~ THEN REPLY #57094 /* ~"Let's do it."~ */ GOTO 22
  IF ~~ THEN REPLY #57095 /* ~"Forget it. Maybe I'll come back later."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.5 12.5 19.2 20.2 21.2
  SAY #57096 /* ~"Then I curse you, scarred man, and wish all the plagues of pestilence upon you." He spits a bloody wad at you and misses.~ */
  IF ~~ THEN REPLY #57097 /* ~"So long."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 25.0
  SAY #57098 /* ~You throw your weight against the cart, and manage to lift it enough for him to squirm out from underneath. You hear a scream of agony cut off suddenly by a wet squelching on the other side of the cart. "My thanks... human. I go now to the walls to aid my guards. My city shall not perish." He gives you a crooked smile. "I do not envy you the deva. He is a fearsome opponent. Take this. It may aid you."~ */
  IF ~~ THEN REPLY #57099 /* ~"Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_3","GLOBALGood",-3)
AddexperienceParty(125000)
SetGlobal("Cart_Trap","GLOBAL",2)
GiveItem("SPWI803",Protagonist)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.0 15.0 20.1 21.1
  SAY #57100 /* ~"We had imprisoned it, oh so many years ago. I thought it perfectly hidden from all sniffing dogs and traitors. Suddenly it burst from under the earth, blazing, and my beautiful, beautiful home... slid." He looks at you intently. "I would have my revenge. Free me, yes?"~ */
  IF ~~ THEN REPLY #57101 /* ~"All right. Get ready."~ */ GOTO 16
  IF ~~ THEN REPLY #57102 /* ~"You were the Burgher of this town?"~ */ GOTO 20
  IF ~~ THEN REPLY #57103 /* ~"No, I don't think so."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 20 // from: 13.1 15.1 19.1
  SAY #57104 /* ~"My compatriots... and I... we were using this city as a base to return ourselves to power... but that is another story for another day. Free me!"~ */
  IF ~~ THEN REPLY #57105 /* ~"All right. Get ready."~ */ GOTO 16
  IF ~~ THEN REPLY #57106 /* ~"What can you tell me of the deva?"~ */ GOTO 19
  IF ~~ THEN REPLY #57107 /* ~"No, I don't think so."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 21 // from: 13.2 15.2
  SAY #57108 /* ~"I don't either... but it's mine, and to see it lost to that preening, self-righteous deva... it is more than I can bear." He coughs wetly. "Free me, and I shall aid you in your revenge on him. My guards can hold off the monsters for a time."~ */
  IF ~~ THEN REPLY #57109 /* ~"All right. Get ready."~ */ GOTO 16
  IF ~~ THEN REPLY #57110 /* ~"What can you tell me of the deva?"~ */ GOTO 19
  IF ~~ THEN REPLY #57111 /* ~"No, I don't think so."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 22 // from: 16.0
  SAY #57112 /* ~As you prepare to lift, you hear a cry of agony from the other side of the cart...~ */
  IF ~~ THEN EXTERN ~DBERROG~ 15
END

IF ~~ THEN BEGIN 23 // from:
  SAY #57113 /* ~"You're crushing me, fool! You can't lift this cart without crushing one of us, and I can make it worth your while to crush him instead!"~ */
  IF ~~ THEN REPLY #57114 /* ~"How so?"~ */ GOTO 24
  IF ~~ THEN REPLY #57115 /* ~"In that case, I should help him. You seem to be part of the evil that's keeping this town nailed in Carceri."~ */ GOTO 25
  IF ~  NumInPartyGT(2)
CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #57116 /* ~"How about if I lift this off both of you? My companions and I can do it if we throw ourselves into it."~ */ GOTO 26
  IF ~~ THEN REPLY #57117 /* ~"I'll be back later, then, when I figure this out."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 28.0
  SAY #57118 /* ~"I still command the guards of Curst... I can inspire them, aid them, slow the tide of monsters that stands between you and the deva... free me, and your tasks shall be easier. Free him, and you gain nothing."~ */
  IF ~~ THEN EXTERN ~DBERROG~ 18
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #57119 /* ~"That... is the deva. This little thief here is nothing to you when compared to the deva. Free me!"~ */
  IF ~~ THEN REPLY #57120 /* ~Lift the cart onto Berrog: "All right."~ */ DO ~Kill("Berrog")
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ GOTO 18
  IF ~~ THEN REPLY #57121 /* ~Prepare to lift the cart off Berrog. "I think I'll just free him instead."~ */ EXTERN ~DBERROG~ 18
  IF ~  NumInPartyGT(2)
CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #57122 /* ~"How about if I lift this off both of you? My companions and I can do it if we throw ourselves into it."~ */ GOTO 26
  IF ~~ THEN REPLY #57123 /* ~"I'll be back later when I can do something about this."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.2 25.2
  SAY #57124 /* ~You and your companions gather around the cart, and with a concentrated effort, manage to lift the cart in such a way that both of those trapped underneath it can wriggle out.~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
IncrementGlobalOnceEx("GLOBALGood_Burgher_1","GLOBALGood",1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(225000)
SetGlobal("Cart_Trap","GLOBAL",3)
~ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #57125 /* ~"My thanks... human. I go now to the walls to aid my guards. My city shall not perish." He gives you a crooked smile. "I do not envy you the conflict with the deva. He is a fearsome opponent. Here. Take this. It may help."~ */
  IF ~~ THEN REPLY #57126 /* ~"Farewell."~ */ DO ~GiveItem("SPWI803",Protagonist)
EscapeArea()
EscapeArea()
~ EXTERN ~DBERROG~ 14
END

IF ~~ THEN BEGIN 28 // from:
  SAY #57127 /* ~"It's... the Burgher, you little fool." He turns his attention to you.~ */
  IF ~~ THEN GOTO 24
END
