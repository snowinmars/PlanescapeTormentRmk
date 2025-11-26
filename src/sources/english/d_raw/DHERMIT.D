// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHERMIT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DHERMIT~

IF ~  Global("Know_Hermit","GLOBAL",0)
CreatureInArea("AR0708")
~ THEN BEGIN 0 // from:
  SAY #57262 /* ~You see a dirty man, hunched and crabbed with age and darkness. His lank, greasy hair flies from his shoulders as he spies you, and his eyes go wide with fear. His fingers begin twisting through arcane patterns...~ */
  IF ~~ THEN REPLY #57263 /* ~"It's okay... I'm not going to hurt you."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #57264 /* ~Attack him before he gets the spell off.~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57265 /* ~Wait and see what happens.~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 2
END

IF ~  Global("Know_Hermit","GLOBAL",1)
CreatureInArea("AR0708")
~ THEN BEGIN 1 // from:
  SAY #57266 /* ~The hermit scuttles away from you, his hands waving in arcane patterns. "Back wi' ye, fell crea... oh, it's you. What d'you want with the ol' hermit now, eh?"~ */
  IF ~~ THEN REPLY #57267 /* ~"Tell me about yourself again."~ */ GOTO 3
  IF ~~ THEN REPLY #57268 /* ~"Tell me about this place."~ */ GOTO 4
  IF ~~ THEN REPLY #57269 /* ~"I'm looking for a deva."~ */ GOTO 5
  IF ~~ THEN REPLY #15954 /* ~"I need a place to rest."~ */ GOTO 22
  IF ~~ THEN REPLY #57270 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 0.2
  SAY #57271 /* ~"Ach, another visitor, eh? You'll all be wantin' to scare the ol' hermit half to death, eh? These tunnels're no place for a casual spring walk, y'know. What d'you want from me?"~ */
  IF ~~ THEN REPLY #57272 /* ~"I'm looking for a deva."~ */ GOTO 5
  IF ~~ THEN REPLY #57273 /* ~"What's down here?"~ */ GOTO 4
  IF ~~ THEN REPLY #57274 /* ~"None of your business."~ */ GOTO 6
  IF ~~ THEN REPLY #57275 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #15954 /* ~"I need a place to rest."~ */ GOTO 22
  IF ~~ THEN REPLY #57270 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.3 4.0 5.1
  SAY #57277 /* ~He sighs noisily, catches himself, and looks around wildly for a moment. "I came to Curst because my god was exiled to Carceri. I've been movin' closer to him alla the time, but I'm not goin' into the prison plane after him. I'm tryin' to find a way to get him out. Since he's a power o' good, he shouldn't even be there, but that's how exile works, I guess."~ */
  IF ~~ THEN REPLY #57278 /* ~"How long have you been here?"~ */ GOTO 7
  IF ~~ THEN REPLY #57279 /* ~"Have you seen a deva around here by any chance?"~ */ GOTO 5
  IF ~~ THEN REPLY #57280 /* ~"What can you tell me about this place, anyway?"~ */ GOTO 4
  IF ~~ THEN REPLY #57281 /* ~"You're a priest? Can I get some healing?"~ */ DO ~StartStore("Hermit",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57282 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 3.2 5.0
  SAY #57283 /* ~"This place? Full of monsters, criminals - I'm not one of 'em - and other folks who mean a body harm. Still safer than the city above, though. At least down here you know where you stand. Up there? Nossir."~ */
  IF ~~ THEN REPLY #57284 /* ~"What are you doing down here, anyway?"~ */ GOTO 3
  IF ~~ THEN REPLY #57285 /* ~"Have you seen a deva around?"~ */ GOTO 5
  IF ~~ THEN REPLY #57286 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 2.0 3.1 4.1
  SAY #57287 /* ~"Heard rumors about it, but this ol' hermit ain't seen it. I thought it might be underground, since this place locks up all good things, but I still can't find it. If I could, I'd ask if it'd heard about my god." He rattles off another sigh, and looks down the hallway. "Somehow, it feels like it'd be off to the west there. But I still haven't found it. It must have a guardian." He winks at you.~ */
  IF ~~ THEN REPLY #57288 /* ~"What can you tell me about this place?"~ */ DO ~GiveItem("SPWI704",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #57289 /* ~"What are you doing down here, anyway?"~ */ DO ~GiveItem("SPWI704",Protagonist)
~ GOTO 3
  IF ~~ THEN REPLY #57290 /* ~"Thanks. Farewell."~ */ DO ~GiveItem("SPWI704",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #57291 /* ~"Hmph! Sneakin' up on an ol' man like that for nothin'. Go on, git!" He waves his hands at you and starts scuttling off through the underground again.~ */
  IF ~~ THEN REPLY #57292 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.0
  SAY #57293 /* ~"Too long, too long, in the service of a god who's all but forgotten. I remember him, though... I'll find him, if I have to duck all the monsters around forever. I'll find him." He stares off, mumbling.~ */
  IF ~~ THEN REPLY #57294 /* ~"Thanks for your time. Farewell."~ */ EXIT
END

IF ~  Global("Know_Hermit","GLOBAL",0)
Global("Current_Area","GLOBAL",900)
GlobalLT("Curst_Counter","GLOBAL",3)
~ THEN BEGIN 8 // from:
  SAY #57295 /* ~You see a dirty man, hunched and crabbed with age and darkness. His lank, greasy hair flies from his shoulders as he looks around. When he spies you, he blurts out, "Kyse the caretaker told me you'd be along. The deva is strong, traveler, strong, and you'd be better off signin' your death warrant than facin' him right now. You can weaken him by weakenin' the chaos in this town... he's feedin' off it."~ */
  IF ~~ THEN REPLY #57296 /* ~"How do you know this?"~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #57297 /* ~"I'm going up anyway."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #57298 /* ~"Get out of my way, old man."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 16
END

IF ~  Global("Know_Hermit","GLOBAL",0)
Global("Current_Area","GLOBAL",900)
GlobalGT("Curst_Counter","GLOBAL",2)
GlobalLT("Curst_Counter","GLOBAL",6)
~ THEN BEGIN 9 // from:
  SAY #57299 /* ~You see a dirty man, hunched and crabbed with age and darkness. His lank, greasy hair flies from his shoulders as he looks around. When he spies you, he blurts out, "Kyse the caretaker told me you'd be along. The deva is still strong, traveler, but your actions've slowed him up some. You can weaken him more by weakenin' further the chaos in this town... he's feedin' off it."~ */
  IF ~~ THEN REPLY #57300 /* ~"How do you know this?"~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #57301 /* ~"I'm ready to face him."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #57302 /* ~"Get out of my way, old man."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 16
END

IF ~  Global("Know_Hermit","GLOBAL",0)
Global("Current_Area","GLOBAL",900)
GlobalGT("Curst_Counter","GLOBAL",5)
~ THEN BEGIN 10 // from:
  SAY #57303 /* ~You see a dirty man, hunched and crabbed with age and darkness. His lank, greasy hair flies from his shoulders as he looks around. When he spies you, he blurts out, "Kyse the caretaker told me you'd be along. You've done a fine job of weakenin' him... the town's chaos is subsidin' and his plan ain't workin' so well. Head up and finish the job."~ */
  IF ~~ THEN REPLY #57304 /* ~"How do you know this?"~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #57305 /* ~"I will. Farewell."~ */ DO ~SetGlobal("Know_Hermit","GLOBAL",1)
~ GOTO 15
END

IF ~  Global("Know_Hermit","GLOBAL",1)
Global("Current_Area","GLOBAL",900)
GlobalLT("Curst_Counter","GLOBAL",3)
~ THEN BEGIN 11 // from:
  SAY #57306 /* ~You see the old hermit from the underground. When he spies you, he blurts out, "Kyse the caretaker told me you'd be along. The deva is strong, traveler, strong, and you'd be better off signin' your death warrant than facin' him right now. You can weaken him by weakenin' the chaos in this town... he's feedin' off it."~ */
  IF ~~ THEN REPLY #57307 /* ~"How do you know this?"~ */ GOTO 14
  IF ~~ THEN REPLY #57308 /* ~"I'm going up anyway."~ */ GOTO 15
  IF ~~ THEN REPLY #57309 /* ~"Get out of my way, old man."~ */ GOTO 16
END

IF ~  Global("Know_Hermit","GLOBAL",1)
Global("Current_Area","GLOBAL",900)
GlobalGT("Curst_Counter","GLOBAL",2)
GlobalLT("Curst_Counter","GLOBAL",6)
~ THEN BEGIN 12 // from:
  SAY #57310 /* ~You see the old hermit from the underground. When he spies you, he blurts out, "Kyse the caretaker told me you'd be along. The deva is still strong, traveler, but your actions've slowed him up some. You can weaken him more by weakenin' further the chaos in this town... he's feedin' off it."~ */
  IF ~~ THEN REPLY #57311 /* ~"How do you know this?"~ */ GOTO 14
  IF ~~ THEN REPLY #57312 /* ~"I'm ready to face him."~ */ GOTO 15
  IF ~~ THEN REPLY #57313 /* ~"Get out of my way, old man."~ */ GOTO 16
END

IF ~  Global("Know_Hermit","GLOBAL",1)
Global("Current_Area","GLOBAL",900)
GlobalGT("Curst_Counter","GLOBAL",5)
~ THEN BEGIN 13 // from:
  SAY #57317 /* ~You see a dirty man, hunched and crabbed with age and darkness. His lank, greasy hair flies from his shoulders as he looks around. When he spies you, he blurts out, "Kyse the caretaker told me you'd be along. You've done a fine job of weakenin' him... the town's chaos is subsidin' and his plan ain't workin' so well. Head up and finish the job."~ */
  IF ~~ THEN REPLY #57315 /* ~"How do you know this?"~ */ GOTO 14
  IF ~~ THEN REPLY #57316 /* ~"I will. Farewell."~ */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 8.0 9.0 10.0 11.0 12.0 13.0
  SAY #57318 /* ~"I can *feel* him up there, waxing and waning like a burning moon. I can *hear* him wondering when you will come. He aches for confrontation."~ */
  IF ~~ THEN REPLY #57319 /* ~"He'll have it soon, but not yet. Farewell."~ */ GOTO 15
  IF ~~ THEN REPLY #57320 /* ~"Then he'll have it."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 8.1 9.1 10.1 11.1 12.1 13.1 14.0 14.1
  SAY #57321 /* ~"Before you go... will you accept the blessing of this ol' man? It might stand you in good stead against the deva and whatever other horrors you might face. Would you like me to heal you?"~ */
  IF ~~ THEN REPLY #57322 /* ~"No thanks."~ */ GOTO 18
  IF ~~ THEN REPLY #57323 /* ~"No. Now move out of my way."~ */ GOTO 17
  IF ~  NumInParty(1)
~ THEN REPLY #57324 /* ~"Yes."~ */ GOTO 19
  IF ~  NumInPartyGT(1)
~ THEN REPLY #57325 /* ~"Yes."~ */ GOTO 20
END

IF ~~ THEN BEGIN 16 // from: 8.2 9.2 11.2 12.2
  SAY #57326 /* ~He lays a surprisingly strong hand on your chest. "Before you go, will you accept a blessing from me? Much as I dislike your scarred face, it's my duty to make sure you go prepared... this ain't just about you. Let me heal your wounds."~ */
  IF ~~ THEN REPLY #57327 /* ~"I don't want your blessing. Get out of my way."~ */ GOTO 17
  IF ~  NumInParty(1)
~ THEN REPLY #57328 /* ~"All right."~ */ GOTO 19
  IF ~  NumInPartyGT(1)
~ THEN REPLY #57329 /* ~"All right."~ */ GOTO 20
END

IF ~~ THEN BEGIN 17 // from: 15.1 16.0
  SAY #57331 /* ~"Then remember this when you lie bleeding in front of him." He grimaces. "Much as it pains me to say it, best o' luck to you."~ */
  IF ~~ THEN REPLY #57332 /* ~"Yeah, thanks. Farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 15.0
  SAY #57334 /* ~"Then on your own head be it. Do not fail, scarred man." He bows to you.~ */
  IF ~~ THEN REPLY #57335 /* ~"Thanks. Farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.2 16.1
  SAY #57338 /* ~He closes his eyes and concentrates, and says, "Allow me to heal your wounds." He opens his eyes. "Now go."~ */
  IF ~~ THEN REPLY #57340 /* ~"Thanks."~ */ DO ~FullHeal(Protagonist)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.3 16.2 21.0 21.1 21.2 21.3 21.4 21.5 21.6 21.7
  SAY #57342 /* ~"Who needs my ministrations?"~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #57344 /* ~"I do."~ */ DO ~FullHeal(Protagonist)
~ GOTO 21
  IF ~  NearbyDialog("DAnnah")
HPPercentLT("Annah",100)
~ THEN REPLY #57349 /* ~"Annah."~ */ DO ~FullHeal("Annah")
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
HPPercentLT("Morte",100)
~ THEN REPLY #57351 /* ~"Morte."~ */ DO ~FullHeal("Morte")
~ GOTO 21
  IF ~  NearbyDialog("DDakkon")
HPPercentLT("Dakkon",100)
~ THEN REPLY #57355 /* ~"Dak'kon."~ */ DO ~FullHeal("Dakkon")
~ GOTO 21
  IF ~  NearbyDialog("DNordom")
HPPercentLT("Nordom",100)
~ THEN REPLY #57356 /* ~"Nordom."~ */ DO ~FullHeal("Nordom")
~ GOTO 21
  IF ~  NearbyDialog("DGrace")
HPPercentLT("Grace",100)
~ THEN REPLY #57358 /* ~"Fall-from-Grace."~ */ DO ~FullHeal("Grace")
~ GOTO 21
  IF ~  NearbyDialog("DIgnus")
HPPercentLT("Ignus",100)
~ THEN REPLY #57360 /* ~"Ignus."~ */ DO ~FullHeal("Ignus")
~ GOTO 21
  IF ~  NearbyDialog("DVhail")
HPPercentLT("Vhail",100)
~ THEN REPLY #57362 /* ~"Vhailor."~ */ DO ~FullHeal("Vhail")
~ GOTO 21
  IF ~~ THEN REPLY #57366 /* ~"None of us. Thanks for the blessing, though. Farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1 20.2 20.3 20.4 20.5 20.6 20.7
  SAY #57367 /* ~"There. Anyone else have wounds for me?"~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #57368 /* ~"I do."~ */ DO ~FullHeal(Protagonist)
~ GOTO 20
  IF ~  NearbyDialog("DAnnah")
HPPercentLT("Annah",100)
~ THEN REPLY #57369 /* ~"Annah."~ */ DO ~FullHeal("Annah")
~ GOTO 20
  IF ~  NearbyDialog("DMorte")
HPPercentLT("Morte",100)
~ THEN REPLY #57370 /* ~"Morte."~ */ DO ~FullHeal("Morte")
~ GOTO 20
  IF ~  NearbyDialog("DDakkon")
HPPercentLT("Dakkon",100)
~ THEN REPLY #57372 /* ~"Dak'kon."~ */ DO ~FullHeal("Dakkon")
~ GOTO 20
  IF ~  NearbyDialog("DNordom")
HPPercentLT("Nordom",100)
~ THEN REPLY #57373 /* ~"Nordom."~ */ DO ~FullHeal("Nordom")
~ GOTO 20
  IF ~  NearbyDialog("DGrace")
HPPercentLT("Grace",100)
~ THEN REPLY #57374 /* ~"Fall-from-Grace."~ */ DO ~FullHeal("Grace")
~ GOTO 20
  IF ~  NearbyDialog("DIgnus")
HPPercentLT("Ignus",100)
~ THEN REPLY #57375 /* ~"Ignus."~ */ DO ~FullHeal("Ignus")
~ GOTO 20
  IF ~  NearbyDialog("DVhail")
HPPercentLT("Vhail",100)
~ THEN REPLY #57376 /* ~"Vhailor."~ */ DO ~FullHeal("Vhail")
~ GOTO 20
  IF ~~ THEN REPLY #57377 /* ~"None of us. Thanks for the blessing, though. Farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 1.3 2.4
  SAY #68484 /* ~"Y'do, eh? All right, then. I've got a place over there you can bed down... I'll let you know if any monsters come a'wanderin'."~ */
  IF ~~ THEN REPLY #32017 /* ~"Thanks."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END
