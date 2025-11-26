// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTRIAS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTRIAS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedTo(0)
GlobalLT("Trias_Sword","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2995 /* ~You see a being with skin of the purest ivory and hair of blinding white. His wings are charred, the feathers destroyed, yet he still radiates peace and love. He stands as if in meditation, taking no notice of your presence, holding his arms out to either side. Chains hold his forearms tightly, attached to the dais on which he stands. Though you do not recall having ever seen a deva, you know in your heart that is what this is.~ */
  IF ~  NearbyDialog("DGrace")
NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #2996 /* ~"I've been looking for you, deva."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ GOTO 114
  IF ~  NearbyDialog("DGrace")
!NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #54306 /* ~"I've been looking for you, deva."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ GOTO 115
  IF ~  NearbyDialog("DGrace")
NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
~ THEN REPLY #54307 /* ~"I've been looking for you, deva."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ JOURNAL #54312 /* ~I found the angel Ravel spoke of, "Trias," imprisoned in Curst. To think the citizens would treat an angel in such a way... this really is a city of cutthroats and back stabbers. Not that that's any different from any of the OTHER places I've been to.~ */ GOTO 125
  IF ~  NearbyDialog("DGrace")
!NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
~ THEN REPLY #54308 /* ~"I've been looking for you, deva."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ JOURNAL #54312 /* ~I found the angel Ravel spoke of, "Trias," imprisoned in Curst. To think the citizens would treat an angel in such a way... this really is a city of cutthroats and back stabbers. Not that that's any different from any of the OTHER places I've been to.~ */ GOTO 126
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
~ THEN REPLY #54309 /* ~"I've been looking for you, deva."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ GOTO 116
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DMorte")
NearbyDialog("DDakkon")
~ THEN REPLY #54310 /* ~"I've been looking for you, deva."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ GOTO 116
  IF ~  !NearbyDialog("DGrace")
!NearbyDialog("DMorte")
~ THEN REPLY #54311 /* ~"I've been looking for you, deva."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ GOTO 4
END

IF WEIGHT #1 ~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedToGT(0)
Global("Trias_Sword","GLOBAL",0)
!NearbyDialog("DGrace")
~ THEN BEGIN 1 // from:
  SAY #54313 /* ~"What is it you wish of me, mortal? Speak your mind and then depart."~ [TTB005] */
  IF ~~ THEN REPLY #54314 /* ~"I have some questions for you..."~ */ GOTO 10
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54315 /* ~"I have your sword."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #54316 /* ~"Forget it. Farewell."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedToGT(0)
Global("Trias_Sword","GLOBAL",1)
!NearbyDialog("DGrace")
~ THEN BEGIN 2 // from:
  SAY #54317 /* ~"What need you, mortal?"~ [TTB002] */
  IF ~~ THEN REPLY #54318 /* ~"I had some questions for you..."~ */ GOTO 117
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54319 /* ~"I have your sword."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #54320 /* ~"Nothing. Farewell."~ */ GOTO 117
END

IF WEIGHT #3 ~  Global("Current_Area","GLOBAL",702)
Global("Trias_Sword","GLOBAL",2)
~ THEN BEGIN 3 // from:
  SAY #54321 /* ~"I thank you for freeing me. I owe you much." His charred wings flutter. "What would you ask of me, mortal? I'm afraid I can offer little in the way of boons."~ [TTB098] */
  IF ~~ THEN REPLY #54322 /* ~"I have many questions for you..."~ */ DO ~SetGlobal("Trias_Sword","GLOBAL",3)
~ GOTO 53
  IF ~~ THEN REPLY #54323 /* ~"Ah well. Farewell."~ */ DO ~SetGlobal("Trias_Sword","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.6
  SAY #54324 /* ~The deva raises its head and rests its gaze upon you. His voice is pure and melodic. "What is it you wish of me, mortal? Speak your mind and leave me to my memories of paradise."~ [TTB004] */
  IF ~~ THEN REPLY #54325 /* ~"Ravel the hag told me to seek you."~ */ JOURNAL #54312 /* ~I found the angel Ravel spoke of, "Trias," imprisoned in Curst. To think the citizens would treat an angel in such a way... this really is a city of cutthroats and back stabbers. Not that that's any different from any of the OTHER places I've been to.~ */ GOTO 12
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54326 /* ~"I have heard rumors of a plague that emerged when they opened this prison."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ JOURNAL #54312 /* ~I found the angel Ravel spoke of, "Trias," imprisoned in Curst. To think the citizens would treat an angel in such a way... this really is a city of cutthroats and back stabbers. Not that that's any different from any of the OTHER places I've been to.~ */ GOTO 13
  IF ~~ THEN REPLY #54327 /* ~"What is this place?"~ */ JOURNAL #54312 /* ~I found the angel Ravel spoke of, "Trias," imprisoned in Curst. To think the citizens would treat an angel in such a way... this really is a city of cutthroats and back stabbers. Not that that's any different from any of the OTHER places I've been to.~ */ GOTO 14
  IF ~~ THEN REPLY #54328 /* ~"Who are you?"~ */ JOURNAL #54312 /* ~I found the angel Ravel spoke of, "Trias," imprisoned in Curst. To think the citizens would treat an angel in such a way... this really is a city of cutthroats and back stabbers. Not that that's any different from any of the OTHER places I've been to.~ */ GOTO 15
  IF ~~ THEN REPLY #54329 /* ~"Memories of paradise?"~ */ JOURNAL #54312 /* ~I found the angel Ravel spoke of, "Trias," imprisoned in Curst. To think the citizens would treat an angel in such a way... this really is a city of cutthroats and back stabbers. Not that that's any different from any of the OTHER places I've been to.~ */ GOTO 16
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54871 /* ~"Is this your sword? It was in the middle of the prison."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ JOURNAL #54312 /* ~I found the angel Ravel spoke of, "Trias," imprisoned in Curst. To think the citizens would treat an angel in such a way... this really is a city of cutthroats and back stabbers. Not that that's any different from any of the OTHER places I've been to.~ */ GOTO 11
  IF ~~ THEN REPLY #54872 /* ~"Forget it. Farewell."~ */ JOURNAL #54312 /* ~I found the angel Ravel spoke of, "Trias," imprisoned in Curst. To think the citizens would treat an angel in such a way... this really is a city of cutthroats and back stabbers. Not that that's any different from any of the OTHER places I've been to.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 114.0
  SAY #54332 /* ~The deva turns its head and rests its gaze upon Morte. "The stench of Baator lies thick about you, skull."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 559
END

IF ~~ THEN BEGIN 6 // from: 115.0
  SAY #54333 /* ~The deva turns its head and rests its gaze upon Morte. "The stench of Baator lies thick about you, skull."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 560
END

IF ~~ THEN BEGIN 7 // from: 116.0
  SAY #54363 /* ~The deva turns its head and rests its gaze upon Morte. "The stench of Baator lies thick about you, skull."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 561
END

IF ~~ THEN BEGIN 8 // from:
  SAY #54364 /* ~"You keep foul company, mortal... but ask your questions of me, and leave me to my memories of paradise."~ */
  IF ~~ THEN REPLY #54365 /* ~"Ravel the hag told me to seek you."~ */ GOTO 12
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54366 /* ~"I have heard rumors of a plague that emerged when they opened this prison."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #54367 /* ~"What is this place?"~ */ GOTO 14
  IF ~~ THEN REPLY #54368 /* ~"Who are you?"~ */ GOTO 15
  IF ~~ THEN REPLY #54369 /* ~"Memories of paradise?"~ */ GOTO 16
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54370 /* ~"Is this your sword? It was in the middle of the prison."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #54371 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #54372 /* ~"You bring a *tanar'ri,*" he hisses the word, "to *my* presence?"~ */
  IF ~~ THEN REPLY #54373 /* ~"What, did the wings give it away?"~ */ GOTO 33
  IF ~~ THEN REPLY #54374 /* ~"Well, yes. Why not?"~ */ GOTO 33
END

IF ~~ THEN BEGIN 10 // from: 1.0 13.2 14.4 16.0 22.1 23.3 24.3 26.2 27.2 28.0 29.2 30.2 31.2 32.1 117.0 117.1
  SAY #54375 /* ~"Another request?"~ */
  IF ~~ THEN REPLY #54376 /* ~"Ravel the hag told me to seek you."~ */ GOTO 12
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54377 /* ~"I have heard rumors of a plague that emerged when they opened this prison."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #54378 /* ~"What is this place?"~ */ GOTO 14
  IF ~~ THEN REPLY #54379 /* ~"Who are you?"~ */ GOTO 15
  IF ~~ THEN REPLY #54380 /* ~"You said something about memories of paradise?"~ */ GOTO 16
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54381 /* ~"Is this your sword? It was in the middle of the prison."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #54382 /* ~"How did your wings get burnt?"~ */ GOTO 28
  IF ~~ THEN REPLY #54383 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.1 2.1 4.5 8.5 10.5 21.0 117.2
  SAY #54384 /* ~He looks shocked for a moment. "Celestial Fire? You have recovered my blade? Will you free me? Then strike a blow against the chain!"~ */
  IF ~~ THEN REPLY #54385 /* ~"I had some questions first..."~ */ GOTO 17
  IF ~~ THEN REPLY #54386 /* ~Strike a blow against the chain.~ */ GOTO 20
  IF ~~ THEN REPLY #54387 /* ~Strike the deva.~ */ GOTO 19
  IF ~~ THEN REPLY #54388 /* ~"Not yet. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.0 8.0 10.0
  SAY #54389 /* ~"Ravel... Ravel... her name strikes sparks in my memory, but... no, it is gone. These chains are like the murky waters of the Styx - the longer they remain, the less I remember. Should I be freed, I could answer your questions to your satisfaction."~ */
  IF ~~ THEN REPLY #54390 /* ~"How can you be freed?"~ */ DO ~SetGlobal("Trias_Sword","GLOBAL",1)
~ JOURNAL #54392 /* ~Trias told me that he can only be freed by an act of kindness - in this case, by retrieving his sword and striking off his chains.~ */ GOTO 21
  IF ~~ THEN REPLY #54391 /* ~"Then I'll come back later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 4.1 8.1 10.1
  SAY #54393 /* ~"It is their own doing. In forging these chains for me to wear, they tempered the links with bitterness and betrayal. Their short-sightedness has been their downfall; had they heeded my warnings, this would not have happened." A great sadness fills his eyes. "My heart pities them."~ */
  IF ~~ THEN REPLY #54394 /* ~"How did you get here?"~ */ GOTO 22
  IF ~~ THEN REPLY #54395 /* ~"How can these chains be broken and the plague lifted?"~ */ JOURNAL #54392 /* ~Trias told me that he can only be freed by an act of kindness - in this case, by retrieving his sword and striking off his chains.~ */ GOTO 21
  IF ~~ THEN REPLY #54396 /* ~"I had other questions for you..."~ */ GOTO 10
  IF ~~ THEN REPLY #54397 /* ~"Farewell... for now."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.2 8.2 10.2 15.0
  SAY #54398 /* ~"You lie upon the neutral ground of the Outlands, within the walls of the gate town of Curst, home of traitors and betrayers, a town that borders the prison plane of Carceri. You are buried within the prison and in the cell of Trias the Condemned, laid low and hurled into this cell where I am bound until freed by an action of kindness, mercy, and justice."~ */
  IF ~~ THEN REPLY #54399 /* ~"Tell me of Curst."~ */ GOTO 26
  IF ~~ THEN REPLY #54400 /* ~"Tell me of Carceri."~ */ GOTO 27
  IF ~~ THEN REPLY #54401 /* ~"How were you laid low?"~ */ GOTO 22
  IF ~~ THEN REPLY #54402 /* ~"How can you be freed?"~ */ JOURNAL #54392 /* ~Trias told me that he can only be freed by an act of kindness - in this case, by retrieving his sword and striking off his chains.~ */ GOTO 21
  IF ~~ THEN REPLY #54403 /* ~"I had some other questions for you..."~ */ GOTO 10
END

IF ~~ THEN BEGIN 15 // from: 4.3 8.3 10.3
  SAY #54404 /* ~"I am Trias the Condemned, Trias the Wounded, Elysium's lost child, a general of the Hosts of the Upper Planes."~ */
  IF ~~ THEN REPLY #54405 /* ~"What is this place?"~ */ GOTO 14
  IF ~~ THEN REPLY #54406 /* ~"How did you get here?"~ */ GOTO 22
  IF ~~ THEN REPLY #54407 /* ~"The Upper Planes?"~ */ GOTO 23
  IF ~~ THEN REPLY #54408 /* ~"The Condemned?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 16 // from: 4.4 8.4 10.4
  SAY #54409 /* ~"That is all I have left to me in this place. Now what is it you wish of me, mortal? Speak your mind and then leave."~ */
  IF ~~ THEN REPLY #54410 /* ~"I had a few questions for you..."~ */ GOTO 10
  IF ~~ THEN REPLY #54411 /* ~"How did you get here?"~ */ GOTO 22
  IF ~~ THEN REPLY #54412 /* ~"What can you tell me of this paradise?"~ */ GOTO 23
  IF ~~ THEN REPLY #54413 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.0 118.0
  SAY #54414 /* ~"Mortal, I shall answer all your questions once you free me, and with a clearer mind as well. Now strike the blow and return my sword!"~ */
  IF ~~ THEN REPLY #54415 /* ~Strike a blow against the chains.~ */ GOTO 20
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #54416 /* ~Strike the deva.~ */ GOTO 19
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #54416 /* ~Strike the deva.~ */ EXTERN ~DGRACE~ 181
  IF ~~ THEN REPLY #54417 /* ~Leave.~ */ EXIT
END

IF WEIGHT #4 ~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedToGT(0)
Global("Know_Sword","GLOBAL",1)
PartyHasItem("Celestia")
GlobalLT("Trias_Sword","GLOBAL",2)
~ THEN BEGIN 18 // from:
  SAY #54418 /* ~"Yes?"~ [TTB003C] */
  IF ~~ THEN REPLY #54419 /* ~"I have questions, yet again."~ */ GOTO 118
  IF ~~ THEN REPLY #54420 /* ~Strike a blow against the chains.~ */ GOTO 20
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #54421 /* ~Strike the deva.~ */ GOTO 19
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #61308 /* ~Strike the deva.~ */ EXTERN ~DGRACE~ 181
  IF ~~ THEN REPLY #54422 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.2 17.1 18.2 118.2
  SAY #54423 /* ~The blade is a flicker of white fire in your hands as you strike the deva. He shrieks horribly as he dies... the sound of a world dying is contained within his voice, and you can't help but feel that you've made a terrible mistake.~ */
  IF ~~ THEN REPLY #54424 /* ~"That's done, then..."~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 11.1 17.0 18.1 49.0 118.1
  SAY #54425 /* ~The chains sunder easily under the blade, and the sound of a thunderclap resonates between your ears. Everything goes black for a moment, and you feel the blade vanish from between your fingers.~ */
  IF ~~ THEN REPLY #54426 /* ~Wait...~ */ DO ~TakePartyItemNum("Celestia",1)
AddexperienceParty(306250)
SetGlobal("Trias_Sword","GLOBAL",2)
FadeToColor([20.0],0)
Wait(3)
Polymorph(Trias)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.0 13.1 14.3 22.0 24.1 32.0
  SAY #54427 /* ~"An act of kindness done to me shall set me free. My sword - my soul - is an agent of such kindness. Fetch the blade for me and strike my chains off. It is kept somewhere in this prison, in a locked and guarded chamber. I know the combination to the entrance." He speaks three arcane syllables that burn into your memory. "Free me, and I should be... in your debt. Perhaps I can aid you in what you seek."~ */
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54428 /* ~"Is this your sword? It was in the middle of the prison."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #54429 /* ~"What do you know of what I seek?"~ */ DO ~SetGlobal("Curst_Key","GLOBAL",7)
~ GOTO 25
  IF ~~ THEN REPLY #68139 /* ~"I'll do it. Farewell."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",7)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.0 14.2 15.1 16.1 26.1 27.1
  SAY #54430 /* ~"Betrayed, in the town known for betrayals. I thought I could spark the light of goodness here, set a few souls free of the traps they created for themselves. Instead, I found myself ensnared, quite against my will, by my former cohorts, bound up in this lightless bubble beneath the earth."~ */
  IF ~~ THEN REPLY #54431 /* ~"How can you be freed?"~ */ JOURNAL #54392 /* ~Trias told me that he can only be freed by an act of kindness - in this case, by retrieving his sword and striking off his chains.~ */ GOTO 21
  IF ~~ THEN REPLY #54432 /* ~"I had some more questions for you..."~ */ GOTO 10
  IF ~~ THEN REPLY #54433 /* ~"Well, good luck. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 15.2 16.2
  SAY #54434 /* ~A shadow passes over his face. "Never again shall I see them, I fear, the ordered beauty of Arcadia, the vistas of Elysium, the Seven Mounts of Mount Celestia... all the ugliness contained in these Lower Planes is effaced there, where it is truly possible to believe in redemption. Too many look only to the Lower Planes for their inspiration and aid, I fear..."~ */
  IF ~~ THEN REPLY #54435 /* ~"What can you tell me of Arcadia?"~ */ GOTO 29
  IF ~~ THEN REPLY #54436 /* ~"What can you tell me of Elysium?"~ */ GOTO 30
  IF ~~ THEN REPLY #54437 /* ~"What can you tell me of Mount Celestia?"~ */ GOTO 31
  IF ~~ THEN REPLY #54438 /* ~"I see... I had some other questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #54439 /* ~"Probably. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 15.3 24.2
  SAY #54440 /* ~"I was a champion of the hosts of the Upper Planes, now subdued and buried beneath this loathsome city. I wish to fly free again, far from here, far from these chains that submerge my very being into stagnation."~ */
  IF ~~ THEN REPLY #54441 /* ~"What can you tell me of those chains?"~ */ GOTO 32
  IF ~~ THEN REPLY #54442 /* ~"How can you be freed?"~ */ JOURNAL #54392 /* ~Trias told me that he can only be freed by an act of kindness - in this case, by retrieving his sword and striking off his chains.~ */ GOTO 21
  IF ~  False()
~ THEN REPLY #54443 /* ~"But your wings are charred; you cannot fly."~ */ GOTO 24
  IF ~~ THEN REPLY #54444 /* ~"I had some other questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #54445 /* ~"Good luck. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.1
  SAY #54446 /* ~He smiles, sadly. "You wear the marks of it upon your face and carry it within your heart. Should these chains be lifted from me... then I should be able to divine your purpose more deeply, guide you more truly. Until then..." The deva shrugs. "Until then I cannot even give you the benefit of good advice. These chains smother memory and instinct."~ */
  IF ~~ THEN REPLY #54447 /* ~"Very well. I'll find your sword. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 14.0 27.0
  SAY #54448 /* ~His face darkens, and lightens with pity. "A town of traitors, to themselves and to others. None may be trusted here, and all seek to draw all others into their tangled schemes... even those who wish only to do good."~ */
  IF ~~ THEN REPLY #54449 /* ~"What can you tell me of Carceri?"~ */ GOTO 27
  IF ~~ THEN REPLY #54450 /* ~"How were you betrayed?"~ */ GOTO 22
  IF ~~ THEN REPLY #54451 /* ~"I had some more questions for you..."~ */ GOTO 10
  IF ~~ THEN REPLY #54452 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 14.1 26.0
  SAY #54453 /* ~"It is the prison of the planes, a plane where even powers are helpless before betrayal. Few leave it, and all who do, leave it changed."~ */
  IF ~~ THEN REPLY #54454 /* ~"Tell me of Curst."~ */ GOTO 26
  IF ~~ THEN REPLY #54455 /* ~"How were you betrayed?"~ */ GOTO 22
  IF ~~ THEN REPLY #54456 /* ~"I had some more questions for you..."~ */ GOTO 10
  IF ~~ THEN REPLY #54457 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 10.6
  SAY #54458 /* ~"It was part of the grand betrayal - they seared my wings as they manacled me, that I might not flee them even through the earth. It is the nature of this place that things of beauty are not tolerated."~ */
  IF ~~ THEN REPLY #54459 /* ~"I see. I had more questions for you..."~ */ GOTO 10
  IF ~~ THEN REPLY #54460 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.0 30.0 31.0
  SAY #54461 /* ~"An ordered paradise, all has its place, and is content - not the chaos and treachery of these lower worlds. A paradise of patterns such as you have never known."~ */
  IF ~~ THEN REPLY #54462 /* ~"What can you tell me of Elysium?"~ */ GOTO 30
  IF ~~ THEN REPLY #54463 /* ~"What can you tell me of Mount Celestia?"~ */ GOTO 31
  IF ~~ THEN REPLY #54464 /* ~"I had some other questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #54465 /* ~"My thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.1 29.0 31.1
  SAY #54466 /* ~"The Restful Plane, a plane of peaceful repose, where tides of chaos and order wash the inhabitants with good. Forests, grassy plains, all of which do not echo beauty but *are* beauty itself. It is a place like no other. It is the pinnacle of goodness and mercy."~ */
  IF ~~ THEN REPLY #54467 /* ~"What can you tell me of Arcadia?"~ */ GOTO 29
  IF ~~ THEN REPLY #54468 /* ~"What can you tell me of Mount Celestia?"~ */ GOTO 31
  IF ~~ THEN REPLY #54469 /* ~"I had some other questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #54470 /* ~"My thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 23.2 29.1 30.1
  SAY #54471 /* ~"The Seven Mountains of Goodness and Law, a plane where all is bathed in the warm radiance of justice and mercy. An ideal. Where the inhabitants strive for justice and mercy and are not content with playing within the shadows of those ideals. They are ideals to be upheld, not food for the mouths of the small-minded and grasping."~ */
  IF ~~ THEN REPLY #54472 /* ~"What can you tell me of Arcadia?"~ */ GOTO 29
  IF ~~ THEN REPLY #54473 /* ~"What can you tell me of Elysium?"~ */ GOTO 30
  IF ~~ THEN REPLY #54474 /* ~"I had some other questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #54475 /* ~"My thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 24.0
  SAY #54476 /* ~"These chains are of such a make that they bind me without binding. They drown memories, holding them beneath a stagnant river so that my knowledge slowly slips and ebbs. I cannot break them with my strength... only an immortal divine force, an act of justice and mercy may shatter them."~ */
  IF ~~ THEN REPLY #54477 /* ~"And what is that force?"~ */ GOTO 21
  IF ~~ THEN REPLY #54478 /* ~"I see. I had some other questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #54479 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 9.0 9.1
  SAY #54480 /* ~"I will not be baited by one who travels with fiends. Tanar'ri, despite the suppleness of your form, you will not find me such an easy target as this mortal. Speak your mind and leave Trias to his imprisonment."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 178
END

IF ~~ THEN BEGIN 34 // from:
  SAY #54481 /* ~"You speak glibly, tanar'ri, as do all of your kind. Ask your questions, mortal, and leave."~ */
  IF ~~ THEN REPLY #54482 /* ~"I'm not mortal."~ */ GOTO 35
  IF ~~ THEN REPLY #54483 /* ~"Ravel the hag sent me to you. She said you had knowledge for me about my stolen mortality."~ */ GOTO 36
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54484 /* ~"I have heard rumors of a plague that emerged when they opened this prison."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 37
  IF ~~ THEN REPLY #54485 /* ~"What is this place?"~ */ GOTO 38
  IF ~~ THEN REPLY #54486 /* ~"Who are you?"~ */ GOTO 39
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54487 /* ~"Is this your sword? It was in the middle of the prison."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #54488 /* ~"How did your wings get burnt?"~ */ GOTO 41
  IF ~~ THEN REPLY #54489 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #54490 /* ~The deva laughs in pure, silver tones. "As you wish, mortal. What do you require of me?"~ */
  IF ~~ THEN REPLY #54491 /* ~"Ravel the hag sent me to you. She said you had knowledge for me about my stolen mortality."~ */ GOTO 36
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54492 /* ~"I have heard rumors of a plague that emerged when they opened this prison."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 37
  IF ~~ THEN REPLY #54493 /* ~"What is this place?"~ */ GOTO 38
  IF ~~ THEN REPLY #54494 /* ~"Who are you?"~ */ GOTO 39
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54495 /* ~"Is this your sword? It was in the middle of the prison."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #54496 /* ~"How did your wings get burnt?"~ */ GOTO 41
  IF ~~ THEN REPLY #54497 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1 35.0 45.0 52.0
  SAY #54498 /* ~"Ravel... the night hag... a stolen mortality... this all seems so familiar to me, yet I fear I cannot dredge up the knowledge while these chains confine me."~ */
  IF ~~ THEN REPLY #54499 /* ~"Why not?"~ */ GOTO 42
  IF ~~ THEN REPLY #54500 /* ~"How can these chains be broken?"~ */ JOURNAL #54392 /* ~Trias told me that he can only be freed by an act of kindness - in this case, by retrieving his sword and striking off his chains.~ */ GOTO 42
  IF ~~ THEN REPLY #54501 /* ~"Why were you confined?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 37 // from: 34.2 35.1 45.1 52.1
  SAY #54502 /* ~"It is their own doing. In forging these chains for me to wear, they tempered the links with bitterness and betrayal. Their short-sightedness has been their downfall; had they heeded my warnings, this would not have happened." A great sadness fills his eyes. "My heart pities them."~ */
  IF ~~ THEN REPLY #54503 /* ~"What can you tell me of those chains?"~ */ GOTO 42
  IF ~~ THEN REPLY #54504 /* ~"How can those chains be broken?"~ */ JOURNAL #54392 /* ~Trias told me that he can only be freed by an act of kindness - in this case, by retrieving his sword and striking off his chains.~ */ GOTO 43
  IF ~~ THEN REPLY #54505 /* ~"I had more questions..."~ */ GOTO 45
END

IF ~~ THEN BEGIN 38 // from: 34.3 35.2 39.0 45.2 52.2
  SAY #54506 /* ~"This? This is the dungeon below the gate town of Curst, portal to Carceri, the prison plane of the gods. This is the home of traitors, the bitter, the condemned... whether or not they deserve their condemnation."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 180
END

IF ~~ THEN BEGIN 39 // from: 34.4 35.3 45.3 52.3
  SAY #54507 /* ~"I am Trias, the Condemned, once a general of the Hosts of the Upper Planes, now languishing in a fetid bubble below the most wretched of gate towns."~ */
  IF ~~ THEN REPLY #54508 /* ~"What is this place?"~ */ GOTO 38
  IF ~~ THEN REPLY #54509 /* ~"How did you get here?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 40 // from: 34.5 35.4 43.0 45.4 52.4
  SAY #54510 /* ~He looks shocked for a moment. "Celestial Fire? You have recovered my blade? Will you free me? Then strike a blow against the chain!"~ */
  IF ~~ THEN REPLY #54511 /* ~"I had some questions first..."~ */ GOTO 49
  IF ~~ THEN REPLY #54512 /* ~Strike a blow against the chain.~ */ GOTO 50
  IF ~~ THEN REPLY #54513 /* ~Strike the deva.~ */ EXTERN ~DGRACE~ 181
  IF ~~ THEN REPLY #54514 /* ~"Not yet. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 34.6 35.5 45.5 52.5
  SAY #54515 /* ~"It was part of the grand betrayal - they seared my wings as they manacled me, that I might not flee them even through the earth. It is the nature of this place that things of beauty are not tolerated."~ */
  IF ~~ THEN REPLY #54516 /* ~"I had more questions for you..."~ */ GOTO 45
  IF ~~ THEN REPLY #54517 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.0 36.1 37.0
  SAY #54518 /* ~"These chains imprison more than my movements. Memories of much knowledge do I have, but the chains distort the memory."~ */
  IF ~~ THEN REPLY #54519 /* ~"How can the chains be broken?"~ */ JOURNAL #54392 /* ~Trias told me that he can only be freed by an act of kindness - in this case, by retrieving his sword and striking off his chains.~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 37.1 42.0
  SAY #54520 /* ~"If I still possessed my instrument of my station, these chains could be sundered easily. My blade, Celestial Fire, is held by the shadows of this town, used to power their poor prison. If I only possessed it in my hand... such freedom would I again know. It is kept in this foul prison, in a locked and guarded chamber. The door is locked, but I know the combination." He speaks three arcane syllables that burn into your mind. "Return and strike these chains with my blade, and my restored memory should enlighten both of us."~ */
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54521 /* ~"Is this your sword? It was in the middle of the prison."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #68140 /* ~"Very well. I'll be back."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",7)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 36.2 39.1
  SAY #54522 /* ~"The people of this town - traitors all - know nothing of truth and beauty. They cannot tolerate it. They lured me here and chained me. Mortals do not possess the perspective that allows them to grow the strength of character to rise above desires, as I sought to teach them."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 179
END

IF ~~ THEN BEGIN 45 // from: 37.2 41.0 46.0 47.1 48.0
  SAY #54523 /* ~"Again?"~ */
  IF ~~ THEN REPLY #54524 /* ~"Ravel the hag sent me to you. She said you had knowledge for me about my stolen mortality."~ */ GOTO 36
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54525 /* ~"I have heard rumors of a plague that emerged when they opened this prison."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 37
  IF ~~ THEN REPLY #54526 /* ~"What is this place?"~ */ GOTO 38
  IF ~~ THEN REPLY #54527 /* ~"Who are you?"~ */ GOTO 39
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54528 /* ~"Is this your sword? It was in the middle of the prison."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #54529 /* ~"How did your wings get burnt?"~ */ GOTO 41
  IF ~~ THEN REPLY #54530 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #54531 /* ~A sneer twists his beautiful face. "Surely, mistress tanar'ri, you don't believe that mortals can ever gain that perspective? Not when you are what you are - your very nature cries out to subdue any chance mortals might have to rise above their base instincts."~ */
  IF ~~ THEN REPLY #54532 /* ~"All right, that's enough. I had more questions, Trias."~ */ GOTO 45
  IF ~~ THEN REPLY #54533 /* ~"That's enough. Farewell, Trias."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #54534 /* ~His eyes flash lightning. "The hosts have let their hearts falter, for they dare not confront the fiends directly. Where is their spirit, their love of purity? My lords direct the war from afar, manipulating the fiends into costly battles with one another, giving them weapons and filling their minds with the knowledge of how to hurt each other more effectively so that they might not look up and see our golden fields."~ */
  IF ~~ THEN REPLY #54535 /* ~"How can this be changed?"~ */ GOTO 48
  IF ~~ THEN REPLY #54536 /* ~"I see. I had other questions..."~ */ GOTO 45
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #54537 /* ~Trias settles back, though his charred wings rustle slightly. "There are ways to change even the minds of immortal generals, mortal. Someday, they shall see, of that I have no doubt."~ */
  IF ~~ THEN REPLY #54538 /* ~"I see. I had other questions..."~ */ GOTO 45
  IF ~~ THEN REPLY #54539 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 40.0
  SAY #54540 /* ~"Mortal, I shall answer all your questions once you free me, and with a clearer mind as well. Now strike the blow and return my sword!"~ */
  IF ~~ THEN REPLY #54541 /* ~Strike a blow against the chains.~ */ GOTO 20
  IF ~~ THEN REPLY #54542 /* ~Strike the deva.~ */ EXTERN ~DGRACE~ 181
  IF ~~ THEN REPLY #54543 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 40.1
  SAY #54544 /* ~The chains sunder easily under the blade, and the sound of a thunderclap resonates between your ears. Everything goes black for a moment, and you feel the blade vanish from between your fingers.~ */
  IF ~~ THEN REPLY #54545 /* ~Wait...~ */ DO ~TakePartyItemNum("Celestia",1)
AddexperienceParty(306250)
SetGlobal("Trias_Sword","GLOBAL",2)
FadeToColor([20.0],0)
Wait(3)
Polymorph(Trias)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #54546 /* ~The blade is a flicker of white fire in your hands as you strike the deva. He shrieks horribly as he dies... the sound of a world dying is contained within his voice, and you can't help but feel that you've made a terrible mistake.~ */
  IF ~~ THEN REPLY #54547 /* ~"That's done, then..."~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
~ EXIT
END

IF WEIGHT #5 ~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedToGT(0)
NearbyDialog("DGrace")
GlobalLT("Trias_Sword","GLOBAL",2)
~ THEN BEGIN 52 // from:
  SAY #54548 /* ~"You have another question?"~ [TTB034] */
  IF ~~ THEN REPLY #54549 /* ~"Ravel the hag sent me to you. She said you had knowledge for me about my stolen mortality."~ */ GOTO 36
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54550 /* ~"I have heard rumors of a plague that emerged when they opened this prison."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 37
  IF ~~ THEN REPLY #54551 /* ~"What is this place?"~ */ GOTO 38
  IF ~~ THEN REPLY #54552 /* ~"Who are you?"~ */ GOTO 39
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54553 /* ~"Is this your sword? It was in the middle of the prison."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #54554 /* ~"How did your wings get burnt?"~ */ GOTO 41
  IF ~~ THEN REPLY #54555 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 3.0 112.0
  SAY #54556 /* ~"Do you seek power over the minds of your fellow mortals? Do you hope for wishes to be granted? Do you want wealth? Do you seek more souls to torment?"~ */
  IF ~~ THEN REPLY #54557 /* ~"I seek knowledge, not power or wealth."~ */ GOTO 56
  IF ~~ THEN REPLY #54558 /* ~"Give me power."~ */ GOTO 54
  IF ~~ THEN REPLY #54559 /* ~"Tell me of wealth."~ */ GOTO 55
END

IF ~~ THEN BEGIN 54 // from: 53.1 55.0
  SAY #54560 /* ~"I can give you power no more than I can give you wisdom or insight. It is not a gift that is given, but rather one that is earned. The failure to understand this is often the downfall of mortals."~ */
  IF ~~ THEN REPLY #54561 /* ~"Then give me knowledge."~ */ GOTO 56
  IF ~~ THEN REPLY #54562 /* ~"Then give me wealth."~ */ GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 53.2 54.1
  SAY #54563 /* ~"Then earn it, and watch your nature diminish even as you are *worth* more. Speak not in the language of merchants to me."~ */
  IF ~~ THEN REPLY #54564 /* ~"Then give me power."~ */ GOTO 54
  IF ~~ THEN REPLY #54565 /* ~"Then give me knowledge."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 53.0 54.0 55.1
  SAY #54566 /* ~"Then speak your desire."~ */
  IF ~~ THEN REPLY #54567 /* ~"My mortality has been stolen from me. I wish to reclaim it."~ */ JOURNAL #54569 /* ~Trias the deva has told me that a fiend named Fhjull Forked-Tongue might be able to aid me in my quest. This fiend lives in the Outlands, and apparently is under some sort of obligation to Trias.~ */ GOTO 57
  IF ~~ THEN REPLY #54568 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #54570 /* ~"You speak foolishness. Yet... there is one who might be able to help you with what you seek. It is a fiend, named Fhjull Forked-Tongue. He shall aid you." The deva's lips quirk in a small smile. "He is under an obligation to do charity."~ */
  IF ~~ THEN REPLY #54571 /* ~"How do I reach him?"~ */ JOURNAL #54572 /* ~I can leave Curst and find Fhjull by taking a link of Trias' broken chain and finding a portal to the north.~ */ GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 102.1 104.0
  SAY #54573 /* ~"Its halls are dark and seem empty - but like you, it draws tormented souls to it like a lodestone. Like you, it is empty and yet full of time's cast-offs. Like you, it is a monument to torment. Shall I tell you of these souls, wanderer?"~ */
  IF ~~ THEN REPLY #54574 /* ~"Yes."~ */ GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 57.0
  SAY #54575 /* ~"There lies a portal to the north of this prison. Its key is a broken chain link." He looks meaningfully at the shattered links around his feet, stoops, and presses one into your hand. "An appropriate key for one who seeks to leave Curst."~ */
  IF ~~ THEN REPLY #54576 /* ~"My thanks. Farewell."~ */ DO ~SetGlobal("Outland_Portal","GLOBAL",1)
~ GOTO 61
END

IF ~~ THEN BEGIN 60 // from: 58.0
  SAY #54577 /* ~His bloody smile widens. "They are the souls of those who died in your place. They have become shadows that you may live. They are *your* shadows, the shades you cast upon existence, and they will find you, wanderer, and they will make you suffer for their torments. You will receive your due at their hands, you and those who are foolish enough to accompany you."~ */
  IF ~~ THEN REPLY #54578 /* ~"I'm sure. What can you tell me of this keeper?"~ */ GOTO 103
  IF ~~ THEN REPLY #54579 /* ~"Thanks for the encouragement, Trias. Now you shall die."~ */ GOTO 105
  IF ~~ THEN REPLY #54580 /* ~"We'll see about that. What will you do when I have left you, Trias?"~ */ GOTO 106
END

IF ~~ THEN BEGIN 61 // from: 59.0
  SAY #54581 /* ~"Farewell, mortal. I have... business... to attend to." He looks meaningfully at the ceiling of his prison, and leaps into the earth above him like a diver into an ocean.~ */
  IF ~~ THEN REPLY #61264 /* ~Leave.~ */ DO ~SinisterPoof("S0P2CUR3",[2577.3268],1)
PlaySoundNotRanged("CURES03")
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 62 // from:
  SAY #54582 /* ~Null Node~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~  Global("Trias_Defeated","GLOBAL",1)
~ THEN BEGIN 63 // from:
  SAY #54583 /* ~"I yield to you this hour, mortal. My imprisonment has weakened me... in my state, I am no match for you."~ [TTB120] */
  IF ~~ THEN REPLY #54584 /* ~"Trias, even if you were in your full glory, you'd be no match for me. Now tell me what I need to know."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
SetGlobal("cd_int_1","LOCALS",1)
~ GOTO 93
  IF ~~ THEN REPLY #54585 /* ~"I still require knowledge from you, Trias. Tell me how to reach the Fortress of Regrets."~ */ DO ~SetGlobal("cd_int_1","LOCALS",1)
~ GOTO 94
  IF ~~ THEN REPLY #54586 /* ~Kill the deva.~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
SetGlobal("cd_int_1","LOCALS",1)
~ GOTO 98
END

IF ~~ THEN BEGIN 64 // from: 119.0
  SAY #54587 /* ~"Look at them, scurrying to save their meager possessions and their meager lives. I notice you did nothing to aid them. Your selfishness has made me stronger."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 12
END

IF ~~ THEN BEGIN 65 // from: 120.0
  SAY #54588 /* ~"Look at them, scurrying to save their meager possessions and their meager lives. I notice you did nothing to aid them. Your selfishness has made me stronger."~ */
  IF ~~ THEN REPLY #54589 /* ~"Why did you lie to me?"~ */ GOTO 71
  IF ~~ THEN REPLY #54590 /* ~"Why have you dragged Curst to the Outlands?"~ */ GOTO 72
  IF ~~ THEN REPLY #54591 /* ~"Nice trick with the city here, Trias. Tell me how to reach the Fortress of Regrets and we'll have done."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_1","GLOBALGood",-2)
~ GOTO 85
  IF ~~ THEN REPLY #54592 /* ~Attack him.~ */ GOTO 70
END

IF ~~ THEN BEGIN 66 // from: 121.0
  SAY #54599 /* ~"You have tried to reform this town, mortal, but it is too late for them. Now they reap the rewards of their faithlessness."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 13
END

IF ~~ THEN BEGIN 67 // from: 122.0
  SAY #54600 /* ~"You have tried to reform this town, mortal, but it is too late for them. Now they reap the rewards of their faithlessness."~ */
  IF ~~ THEN REPLY #54601 /* ~"Why did you lie to me?"~ */ GOTO 71
  IF ~~ THEN REPLY #54602 /* ~"Why have you dragged Curst to the Outlands?"~ */ GOTO 72
  IF ~~ THEN REPLY #54603 /* ~"Nice trick with the city here, Trias. Tell me how to reach the Fortress of Regrets and we'll have done."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_1","GLOBALGood",-2)
~ GOTO 75
  IF ~~ THEN REPLY #54604 /* ~Attack him.~ */ GOTO 70
END

IF ~~ THEN BEGIN 68 // from: 123.0
  SAY #54605 /* ~Trias looks out over the city. "Much good you have done in such a short time, mortal. It shall not be enough to keep these traitors from realizing the depths of their folly."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 13
END

IF ~~ THEN BEGIN 69 // from: 124.0
  SAY #54606 /* ~Trias looks out over the city. "Much good you have done in such a short time, mortal. It shall not be enough to keep these traitors from realizing the depths of their folly."~ */
  IF ~~ THEN REPLY #54607 /* ~"Why did you lie to me?"~ */ GOTO 71
  IF ~~ THEN REPLY #54608 /* ~"Why have you dragged Curst to the Outlands?"~ */ GOTO 72
  IF ~~ THEN REPLY #54609 /* ~"Nice trick with the city here, Trias. Tell me how to reach the Fortress of Regrets and we'll have done."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_1","GLOBALGood",-2)
~ GOTO 85
  IF ~~ THEN REPLY #54610 /* ~Attack him.~ */ GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 65.3 67.3 69.3 80.2 86.2
  SAY #54611 /* ~Trias' eyes light, and a spark dances along his blade. "Now we shall see if you can die. At the very least, you shall suffer."~ [TTB118] */
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54612 /* ~Attack him.~ */ DO ~ForceAttack(Protagonist,Myself)
ForceAttack("Vhailor",Myself)
Enemy()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54613 /* ~Wait.~ */ DO ~ForceAttack("Vhailor",Myself)
Enemy()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54614 /* ~"Let's talk this out!"~ */ DO ~ForceAttack("Vhailor",Myself)
Enemy()
~ EXIT
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54615 /* ~Attack him.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54616 /* ~Wait.~ */ DO ~Enemy()
~ EXIT
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54617 /* ~"Let's talk this out!"~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 71 // from: 65.0 67.0 69.0
  SAY #54618 /* ~"You were in need of direction. The price of your need was betrayal. How is it that you believe that you have earned the right to any truths in this life or the next? Such arrogance. Indeed, it was your duty as a lesser being to free me. I owe you nothing, and it is what I have given. I gave you more than you deserved. You freed me to help yourself."~ */
  IF ~~ THEN REPLY #54619 /* ~"Then why have you dragged Curst into the Outlands?"~ */ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 65.1 67.1 69.1 71.0
  SAY #54620 /* ~"A city of betrayers have been betrayed and received what they have deserved. There is no 'why'. It seals my compact with the Lower Planes. The greater good is served."~ */
  IF ~~ THEN REPLY #54621 /* ~"You made a compact with the Lower Planes?"~ */ GOTO 73
  IF ~~ THEN REPLY #54622 /* ~"The greater good? What greater good is that?"~ */ GOTO 74
  IF ~~ THEN REPLY #54623 /* ~"Who appointed you executioner? What gives you the right to do this?"~ */ GOTO 75
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #54624 /* ~"One cannot scale Mount Celestia without an army. The composition of that army is of importance to me. It is much easier to hire such creatures than force them into an attack."~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #54625 /* ~"You're going to attack Mount Celestia with *fiends?* Is consorting with them not against your nature?"~ */ GOTO 76
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #54626 /* ~"You're going to attack Mount Celestia with *fiends?* Is consorting with them not against your nature?"~ */ GOTO 77
END

IF ~~ THEN BEGIN 74 // from: 72.1
  SAY #54627 /* ~"The blood spilled by an army of fiends will be redeemed by the righteous wrath of the Hosts of Heaven. Those who fall do so in the name of a greater good. This town falls in the name of the greater good - the expunging of evil. A small sacrifice, considering those who are to be sacrificed."~ */
  IF ~~ THEN REPLY #54628 /* ~"No good comes of evil roots, I fear."~ */ GOTO 86
  IF ~~ THEN REPLY #54629 /* ~"Very well. I agree. Just tell me how to reach the Fortress of Regrets and I'll leave you to your sacrifice."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_1","GLOBALGood",-2)
~ GOTO 85
END

IF ~~ THEN BEGIN 75 // from: 67.2 72.2 92.0
  SAY #54630 /* ~"I am *here.* I see the evil. I am willing to act on it. My *will* gives me the right."~ */
  IF ~~ THEN REPLY #54631 /* ~"One's will does not give one the right, Trias."~ */ GOTO 86
  IF ~~ THEN REPLY #54632 /* ~"Very well. I agree. Just tell me how to reach the Fortress of Regrets and I'll leave you to your sacrifice."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_1","GLOBALGood",-2)
~ GOTO 85
END

IF ~~ THEN BEGIN 76 // from: 73.0
  SAY #54633 /* ~The deva's face darkens. "I am doing this to redeem the name of Good!" he snarls. "While the generals of the Upper Planes cower behind their golden gates and feed a brutal war that devours the innocent, I will bring them into confrontation with what they fear most, and through that confrontation, they will overcome their fear."~ */
  IF ~~ THEN REPLY #54634 /* ~"By betraying your *homeland?*"~ */ GOTO 80
  IF ~~ THEN REPLY #54635 /* ~"And you will taint the fields of Good with evil incarnate?"~ */ GOTO 90
  IF ~~ THEN REPLY #54636 /* ~"There must be another way, Trias."~ */ GOTO 91
END

IF ~~ THEN BEGIN 77 // from: 73.1
  SAY #54637 /* ~The deva's face darkens. "I am doing this to redeem the name of Good!" he snarls. "While the generals of the Upper Planes cower behind their golden gates and feed a brutal war that devours the innocent, I will bring them into confrontation with what they fear most, and through that confrontation, they will overcome their fear."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 182
END

IF ~~ THEN BEGIN 78 // from:
  SAY #54638 /* ~"You assume much of their chances, tanar'ri. An idea whose time has come is stronger than any army. And what know you of military tactics, *temptress?* Your skills lie in other pursuits." His eyes travel over her body. "Leave strategy to those of us who understand it."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 183
END

IF ~~ THEN BEGIN 79 // from:
  SAY #54639 /* ~"You are a mystery to me, tanar'ri. This is, I am sure, precisely as you wish it to be." He turns his attentions back to you.~ */
  IF ~~ THEN REPLY #54640 /* ~"Do you think to solve this problem by betraying your *homeland?*"~ */ GOTO 80
  IF ~~ THEN REPLY #54641 /* ~"Will you taint the fields of Good with evil incarnate?"~ */ GOTO 90
  IF ~  CheckStatGT(Protagonist,15,WIS)
GlobalGT("Good","GLOBAL",14)
~ THEN REPLY #54642 /* ~"There must be another way, Trias."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Trias_1","GLOBALGood",1)
~ GOTO 87
  IF ~  CheckStatGT(Protagonist,15,WIS)
GlobalLT("Good","GLOBAL",15)
~ THEN REPLY #54643 /* ~"There must be another way, Trias."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Trias_1","GLOBALGood",1)
~ GOTO 88
END

IF ~~ THEN BEGIN 80 // from: 76.0 79.0 90.0
  SAY #54644 /* ~"I shall speak of betrayal to you, human. Betrayal is an abandonment of the war against evil. Betrayal is cowardice, selling weapons to your adversaries out of fear that they might stop killing each other and turn upon you. Betrayal is refusing to lead by example. Betrayal is letting the fiends run rampant through the planes until evil has corrupted all hearts. Ask not why I scale Mount Celestia and seek to set fire to its comfort-laden slopes with war. It is no betrayal."~ */
  IF ~~ THEN REPLY #54645 /* ~"You would taint the essence of good with evil incarnate. That sounds like betrayal."~ */ GOTO 81
  IF ~~ THEN REPLY #54646 /* ~"Betrayal is betrayal."~ */ GOTO 81
  IF ~~ THEN REPLY #54647 /* ~"I've had enough of your self-righteousness, Trias. Prepare to die."~ */ GOTO 70
END

IF ~~ THEN BEGIN 81 // from: 80.0 80.1 86.0 86.1
  SAY #54648 /* ~"There are many definitions of betrayal. One must live long enough to experience them all. Even your life, were it not fraught with forgetfulness, does not have the range of centuries necessary to appreciate them. Such a betrayal is no betrayal at all."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #54649 /* ~"What really happened to your wings, Trias?"~ */ GOTO 82
  IF ~~ THEN REPLY #54650 /* ~"Stand down, Trias, and we will not come to blows."~ */ GOTO 83
  IF ~~ THEN REPLY #54651 /* ~"Enough, Trias. Defend yourself."~ */ GOTO 84
  IF ~~ THEN REPLY #54652 /* ~"Tell me how to reach the Fortress of Regrets, Trias, and I shall leave you here."~ */ GOTO 85
END

IF ~~ THEN BEGIN 82 // from: 81.0 91.0
  SAY #54653 /* ~"Baator's fires burn hot indeed, but they are candles compared to a father's anger." He flutters the burnt shreds of his wings. "There is no pain like being cast from Mount Celestia."~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
GlobalGT("Good","GLOBAL",14)
~ THEN REPLY #54654 /* ~"Stand down, Trias. You can still be redeemed."~ */ GOTO 87
  IF ~  CheckStatGT(Protagonist,15,WIS)
GlobalLT("Good","GLOBAL",15)
~ THEN REPLY #54655 /* ~"Stand down, Trias. You can still be redeemed."~ */ GOTO 88
  IF ~~ THEN REPLY #54656 /* ~"So you're fallen, then? Why should I believe any of your words?"~ */ GOTO 92
END

IF ~~ THEN BEGIN 83 // from: 81.1 90.1 91.1
  SAY #54657 /* ~"Is your foolishness so great that you wish to test your pseudo-immortality against a true immortal? Step aside, human, or we shall test this claim of yours."~ */
  IF ~~ THEN REPLY #54658 /* ~"Bring it on, Trias."~ */ GOTO 84
END

IF ~~ THEN BEGIN 84 // from: 81.2 83.0 88.0
  SAY #54659 /* ~"It has been a long time since I have wielded my blade against another. We shall duel, you and I."~ [TTB119] */
  IF ~~ THEN REPLY #54660 /* ~Attack him.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 85 // from: 65.2 69.2 74.1 75.1 81.3
  SAY #54661 /* ~Trias' eyes gleam. "I think not, mortal. You cast shadows on existence, you call torment down from the heavens, and it is in my power to open you to the Light." White fire dances on his blade. "We shall duel, you and I."~ */
  IF ~~ THEN REPLY #54662 /* ~"All right, Trias... but I'm going to kill you."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 86 // from: 74.0 75.0
  SAY #54663 /* ~"I will not be judged by you, mortal, not when you have lived the lives you have. Let me tell you of betrayal: Betrayal is cowardice, selling weapons to your adversaries out of fear that they might stop killing each other and turn upon you. Betrayal is refusing to lead by example. Betrayal is letting the fiends run rampant through the planes until evil has corrupted all hearts. Ask not therefore why I scale Mount Celestia and seek to set fire to its slopes with war."~ */
  IF ~~ THEN REPLY #54664 /* ~"You would taint the essence of good with evil incarnate. That sounds like betrayal."~ */ GOTO 81
  IF ~~ THEN REPLY #54665 /* ~"Betrayal is betrayal."~ */ GOTO 81
  IF ~~ THEN REPLY #54666 /* ~"I've had enough of your self-righteousness, Trias. Prepare to die."~ */ GOTO 70
END

IF ~~ THEN BEGIN 87 // from: 79.2 82.0
  SAY #54667 /* ~He looks deeply into your eyes. "The time for redemption has passed, mortal. I regret nothing. If one truly believes in a cause, one must be willing to betray it. I truly believe in Good, and so I choose to betray it."~ */
  IF ~~ THEN REPLY #54668 /* ~"Maybe I can change your mind..."~ */ GOTO 89
END

IF ~~ THEN BEGIN 88 // from: 79.3 82.1
  SAY #54669 /* ~He scoffs. "You are not one to speak of redemption, mortal. You reek of evil; your words are snares and lies. No, this plan shall continue, and we shall see Heaven's gates burning, by and by."~ */
  IF ~~ THEN REPLY #54670 /* ~"Then we shall fight."~ */ GOTO 84
END

IF ~~ THEN BEGIN 89 // from: 87.0 92.1
  SAY #54671 /* ~"Let us have a contest of arms, mortal, and we shall see whose ideas have the greater weight behind them. Defend yourself, mortal."~ */
  IF ~~ THEN REPLY #54672 /* ~Prepare yourself.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #54673 /* ~Attack the deva.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 90 // from: 76.1 79.1
  SAY #54674 /* ~"The taint will not remain for long, and it will be washed away by the purity of those who remain. It is a sacrifice for the greater good."~ */
  IF ~~ THEN REPLY #54675 /* ~"Betraying your homeland?"~ */ GOTO 80
  IF ~~ THEN REPLY #54676 /* ~"That's enough, Trias. Stand down, or we shall fight."~ */ GOTO 83
END

IF ~~ THEN BEGIN 91 // from: 76.2
  SAY #54677 /* ~"You, who speak in terms of human lifetimes, presume to tell a true immortal that there must be another way? I have examined the other routes, mortal, and this is the only way."~ */
  IF ~~ THEN REPLY #54678 /* ~"What really happened to your wings, Trias?"~ */ GOTO 82
  IF ~~ THEN REPLY #54679 /* ~"That's enough, Trias. Stand down, or we shall fight."~ */ GOTO 83
END

IF ~~ THEN BEGIN 92 // from: 82.2
  SAY #54680 /* ~"Speak not to me of treacheries and falling, mortal. I am willing to sacrifice even myself that Good might triumph."~ */
  IF ~~ THEN REPLY #54681 /* ~"That's noble, Trias, but what gives you the right?"~ */ GOTO 75
  IF ~~ THEN REPLY #54682 /* ~"I hope you're ready to make that sacrifice now, Trias. I mean to be the instrument of judgment."~ */ GOTO 89
END

IF ~~ THEN BEGIN 93 // from: 63.0
  SAY #54683 /* ~"Stay your hand, mortal. You came to me in search of knowledge that is known to me alone. No one else in the planes may speak of what I am to tell you. If you truly wish this knowledge, you must promise to spare my life."~ */
  IF ~~ THEN REPLY #54684 /* ~"No deal, Trias. Tell me now, or I shall slay you, and damned be the consequences."~ */ GOTO 95
  IF ~~ THEN REPLY #54685 /* ~"I will spare your life if you give me the knowledge I seek."~ */ GOTO 96
  IF ~~ THEN REPLY #54686 /* ~"I vow to spare your life if you give me the knowledge I seek."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trias_1","GLOBALLaw",1)
~ GOTO 96
  IF ~~ THEN REPLY #54687 /* ~Kill the deva.~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
~ GOTO 98
END

IF ~~ THEN BEGIN 94 // from: 63.1
  SAY #54688 /* ~He coughs bloody spittle. "Before I tell you, I must exact a promise from you. You must vow to spare my life."~ */
  IF ~~ THEN REPLY #54689 /* ~"No deal, Trias. Tell me now, or I shall slay you, and damned be the consequences."~ */ GOTO 95
  IF ~~ THEN REPLY #54690 /* ~"I will spare your life if you give me the knowledge I seek."~ */ GOTO 96
  IF ~~ THEN REPLY #54691 /* ~"I vow to spare your life if you give me the knowledge I seek."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trias_1","GLOBALLaw",1)
~ GOTO 96
  IF ~~ THEN REPLY #54692 /* ~Kill the deva.~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
~ GOTO 98
END

IF ~~ THEN BEGIN 95 // from: 93.0 94.0
  SAY #54693 /* ~"You need this knowledge, or you shall suffer... perpetually."~ */
  IF ~~ THEN REPLY #54694 /* ~"I said, *tell me.*"~ */ GOTO 97
  IF ~~ THEN REPLY #54695 /* ~"I will spare your life if you give me the knowledge I seek."~ */ GOTO 96
  IF ~~ THEN REPLY #54696 /* ~"I vow to spare your life if you give me the knowledge I seek."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trias_1","GLOBALLaw",1)
~ GOTO 96
  IF ~~ THEN REPLY #54697 /* ~Kill the deva.~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
~ GOTO 98
END

IF ~~ THEN BEGIN 96 // from: 93.1 93.2 94.1 94.2 95.1 95.2 97.0 97.1
  SAY #54698 /* ~"The portal to the place you seek lies within the torus above the spire, in the city of Sigil, the City of Doors. In that city, there is a place where the dead of your kind are taken..."~ */
  IF ~~ THEN REPLY #54699 /* ~"You mean the *Mortuary?*"~ */ GOTO 99
  IF ~~ THEN REPLY #54700 /* ~"What is the key?"~ */ GOTO 100
END

IF ~~ THEN BEGIN 97 // from: 95.0
  SAY #54701 /* ~He laughs quietly. "You have little choice, mortal. Swear to me or lose this knowledge forever."~ */
  IF ~~ THEN REPLY #54702 /* ~"Very well. I will spare your life if you give me the knowledge I seek."~ */ GOTO 96
  IF ~~ THEN REPLY #54703 /* ~"Very well. I vow to spare your life if you give me the knowledge I seek."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trias_1","GLOBALLaw",1)
~ GOTO 96
  IF ~~ THEN REPLY #54704 /* ~Kill the deva.~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
~ GOTO 98
END

IF ~~ THEN BEGIN 98 // from: 63.2 93.3 94.3 95.3 97.2 107.0
  SAY #54705 /* ~You strike him down, shattering the bones of his proud face, bruising his immaculate form. With his dying strength, he says, "Know that you have damned yourself. In killing me, you have shattered the last shield that you have against the horrors that will consume you. The fiend I tricked... he is now free..." His weak chuckle trickles off, and the light vanishes from his eyes.~ */
  IF ~~ THEN REPLY #54706 /* ~"Just die, already."~ */ DO ~AddexperienceParty(375000)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 99 // from: 96.0
  SAY #54707 /* ~"It is where you awoke of late, is it not? The planes seem filled with such ironies of late. So *close* you were, then..."~ */
  IF ~~ THEN REPLY #54708 /* ~"What is the key?"~ */ GOTO 100
END

IF ~~ THEN BEGIN 100 // from: 96.1 99.0
  SAY #54709 /* ~"The Fortress of Regrets is mortared with tears, and like calls to like. To enter the Fortress, you must contribute something to it. When you pass near the portal, should you carry regret in your mind, you will feel the presence of the portal, like the cold embrace of death."~ */
  IF ~~ THEN REPLY #54710 /* ~"And?"~ */ DO ~SetGlobal("Regret","GLOBAL",1)
~ JOURNAL #54711 /* ~Trias the Betrayer gave me the key to the Fortress of Regrets. The portal lies somewhere in the Mortuary; I can locate it by keeping a regret fresh in my mind, and it will chill me as I draw near. Once in front of the portal, I must tear a scrap of my skin from my body and inscribe a regret on it with blood drawn from my left index finger.~ */ GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 100.0
  SAY #54712 /* ~"While this chill bathes you, you must tear off a scrap of your own skin, and write a regret upon it with blood from your left index finger. The portal will open, and you can discover the truth behind the Fortress of Regrets - and perhaps meet its keeper."~ */
  IF ~~ THEN REPLY #54713 /* ~"How do you know this?"~ */ GOTO 102
  IF ~~ THEN REPLY #54714 /* ~"What can you tell me of the keeper of the Fortress?"~ */ GOTO 103
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #54715 /* ~"Many alliances have I sought across the planes. My search brought me to the Fortress, where I spoke to its lord and keeper of its shadowed halls. No doubt you should wish to return to Sigil now. The blood you have on your hands shall act as the key to this portal; simply step through the door by which you entered, and you shall return."~ */
  IF ~~ THEN REPLY #54716 /* ~"What can you tell me of this keeper?"~ */ GOTO 103
  IF ~~ THEN REPLY #54717 /* ~"What can you tell me of the Fortress?"~ */ GOTO 58
  IF ~~ THEN REPLY #54718 /* ~"My thanks, Trias. Now you shall die."~ */ GOTO 105
  IF ~~ THEN REPLY #54719 /* ~"What will you do when I have left you, Trias?"~ */ GOTO 106
END

IF ~~ THEN BEGIN 103 // from: 60.0 101.1 102.0
  SAY #54720 /* ~"Powerful is that one. You shall not best him, and you shall not be able to wrest your mortality from his cold grip. It is lost to you. You have embarked on an errand undertaken only by fools."~ */
  IF ~~ THEN REPLY #54721 /* ~"Foolish I may be, but I will know more about this keeper."~ */ DO ~SetGlobal("Know_Keeper_Mortality","GLOBAL",1)
~ GOTO 104
  IF ~~ THEN REPLY #54722 /* ~"Go on."~ */ DO ~SetGlobal("Know_Keeper_Mortality","GLOBAL",1)
~ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0 103.1
  SAY #54723 /* ~"A man's mortality is a compass that points his way in life. If it may be grasped like an object, much can be learned about the nature of the man it was torn from. Your adversary knows more about you than you will ever know. He has watched you and studied you across many of your half-lives. I know his heart. He will not return that which you seek."~ */
  IF ~~ THEN REPLY #54717 /* ~"What can you tell me of the Fortress?"~ */ GOTO 58
  IF ~~ THEN REPLY #54724 /* ~"My thanks, Trias. Now you shall die."~ */ GOTO 105
  IF ~~ THEN REPLY #54725 /* ~"What will you do when I have left you, Trias?"~ */ GOTO 106
END

IF ~~ THEN BEGIN 105 // from: 60.1 102.2 104.1
  SAY #54726 /* ~"But you swore..."~ */
  IF ~  Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54727 /* ~"I lied."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Trias_1","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
~ GOTO 107
  IF ~  !Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54728 /* ~"I never swore. I simply stated that I would spare your life. I've changed my mind."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
~ GOTO 107
  IF ~~ THEN REPLY #54729 /* ~"I'm kidding. What will you do when I have left you, Trias?"~ */ GOTO 106
END

IF ~~ THEN BEGIN 106 // from: 60.2 102.3 104.2 105.2
  SAY #54730 /* ~"I shall once again attempt to levy a host against the gates of Paradise. They will not have me back, and there is no other purpose to my existence."~ */
  IF ~~ THEN REPLY #54731 /* ~"Then I'll have to stop you. Now."~ */ GOTO 108
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #54732 /* ~"Trias, have you forgotten the face of your father?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Trias_2","GLOBALGood",1)
~ GOTO 109
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54733 /* ~"Good luck with it. Farewell."~ */ DO ~SinisterPoof("S0P2CUR3",[2577.3268],1)
PlaySoundNotRanged("CURES03")
DestroySelf()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54734 /* ~"Good luck with it. Farewell."~ */ EXTERN ~DVHAIL~ 14
END

IF ~~ THEN BEGIN 107 // from: 105.0 105.1 108.0 108.1
  SAY #54735 /* ~"I curse you to lives without meaning. May you suffer in your perpetual pain-filled shell and never hold on to the memories of the pleasure of light and love. What little of your humanity remains shall be the death of you, mortal."~ */
  IF ~~ THEN REPLY #54736 /* ~Strike him down. "Farewell, Trias." ~ */ GOTO 98
END

IF ~~ THEN BEGIN 108 // from: 106.0 111.1
  SAY #54737 /* ~"You swore to spare my life, mortal."~ */
  IF ~  Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54738 /* ~"Let's just say I'm doing it for the greater good, Trias."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Trias_1","GLOBALLaw",-3)
~ GOTO 107
  IF ~  !Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54739 /* ~"I never swore. I simply stated that I would spare your life. And now I realize that would be pointless. In other words, I've changed my mind."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
~ GOTO 107
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54740 /* ~"Go ahead and try, then. But know that they'll be prepared for you. Farewell, Trias. May your venture fail."~ */ DO ~EscapeArea()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54741 /* ~"Go ahead and try, then. But know that they'll be prepared for you. Farewell, Trias. May your venture fail."~ */ EXTERN ~DVHAIL~ 14
END

IF ~~ THEN BEGIN 109 // from: 106.1
  SAY #54742 /* ~"What do you mean?"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #54743 /* ~"The Upper Planes are the home of justice, beauty, and goodness. They are also home to forgiveness. Go home. Admit your error and beg forgiveness."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Trias_3","GLOBALGood",5)
SetGlobal("Trias_Redeem","GLOBAL",1)
~ GOTO 110
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #54744 /* ~"The Upper Planes are the home of justice, beauty, and goodness. They are also home to forgiveness. Go home. Admit your error and beg forgiveness."~ */ GOTO 111
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54745 /* ~"Forget it. Farewell, Trias."~ */ DO ~SinisterPoof("S0P2CUR3",[2577.3268],1)
PlaySoundNotRanged("CURES03")
DestroySelf()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54746 /* ~"Forget it. Farewell, Trias."~ */ EXTERN ~DVHAIL~ 14
END

IF ~~ THEN BEGIN 110 // from: 109.0 111.0
  SAY #54747 /* ~He opens his mouth for an angry retort... and pauses, reflecting. He bows his head. "You speak convincing words, mortal, and their wisdom pierces me. I shall seek the forgiveness of my fathers, and accept any retribution they choose. Take this, and farewell, mortal. If we meet again, it is my hope that I will be redeemed."~ */
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54748 /* ~"Best of luck, Trias. Farewell."~ */ DO ~GiveItem("SPWI901",Protagonist)
AddexperienceParty(375000)
StickySinisterPoof("S113SMOK",Myself,1)
Wait(1)
DestroySelf()
~ JOURNAL #54750 /* ~I convinced Trias to seek forgiveness in the Upper Planes.~ */ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54749 /* ~"Best of luck, Trias. Farewell."~ */ DO ~GiveItem("SPWI901",Protagonist)
~ JOURNAL #54751 /* ~I convinced Trias to seek forgiveness in the Upper Planes - and then Vhailor attacked him.~ */ EXTERN ~DVHAIL~ 14
END

IF ~~ THEN BEGIN 111 // from: 109.1
  SAY #54752 /* ~His face brightens, and then darkens again. He looks away. "I cannot return. My transgressions are too great. There is no forgiveness for one such as me. I shall serve the cause of Good in my own way now."~ */
  IF ~  CheckStatGT(Protagonist,16,WIS)
~ THEN REPLY #54753 /* ~"There is forgiveness, Trias. Just as you are greater than a lowly petitioner, so are the powers of the Upper Planes more just than you. You are not the epitome of goodness; remember that you can trust them."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Trias_3","GLOBALGood",5)
SetGlobal("Trias_Redeem","GLOBAL",1)
~ GOTO 110
  IF ~~ THEN REPLY #54754 /* ~"Then I'll have to stop you here."~ */ GOTO 108
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54755 /* ~"Then farewell, and always remember you had a chance at redemption and refused it."~ */ DO ~SinisterPoof("S0P2CUR3",[2577.3268],1)
PlaySoundNotRanged("CURES03")
DestroySelf()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54756 /* ~"Then farewell, and always remember you had a chance at redemption and refused it."~ */ EXTERN ~DVHAIL~ 14
END

IF WEIGHT #13 /* Triggers after states #: 124 123 122 121 120 119 even though they appear after this state */
~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedToGT(0)
Global("Trias_Sword","GLOBAL",3)
~ THEN BEGIN 112 // from:
  SAY #54757 /* ~"Again?"~ [TTB037] */
  IF ~~ THEN REPLY #54758 /* ~"I had more questions for you."~ */ GOTO 53
  IF ~~ THEN REPLY #54759 /* ~"Not really. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 113 // from:
  SAY #54760 /* ~Vhailor strikes him down, shattering the bones of his proud face, bloodying his immaculate form. With his dying strength, Trias says, "Know that you have damned yourself. In killing me, you have shattered the last shield that you have against the horrors that will consume you. The fiend I tricked... he is now free..." His weak chuckle trickles off, and the light vanishes from his eyes.~ */
  IF ~~ THEN REPLY #106512 /* ~"Damnit, Vhailor, do you realize what you've done?!"~ */ DO ~SetGlobal("Trias_Redeem","GLOBAL",0)
AddexperienceParty(375000)
Kill(Myself)
~ EXTERN ~DVHAIL~ 170
  IF ~~ THEN REPLY #54761 /* ~"Just die, already."~ */ DO ~SetGlobal("Trias_Redeem","GLOBAL",0)
AddexperienceParty(375000)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 114 // from: 0.0
  SAY #61293 /* ~The deva raises its head and rests its gaze upon you. His voice is pure and melodic. "What is it you wish of me, mortal? Speak your mind and leave me to my memories of paradise." Before you can answer, the deva's face tightens and changes to a frown.~ [TTB004] */
  IF ~~ THEN JOURNAL #54312 /* ~I found the angel Ravel spoke of, "Trias," imprisoned in Curst. To think the citizens would treat an angel in such a way... this really is a city of cutthroats and back stabbers. Not that that's any different from any of the OTHER places I've been to.~ */ GOTO 5
END

IF ~~ THEN BEGIN 115 // from: 0.1
  SAY #61294 /* ~The deva raises its head and rests its gaze upon you. His voice is pure and melodic. "What is it you wish of me, mortal? Speak your mind and leave me to my memories of paradise." Before you can answer, the deva's face tightens and changes to a frown.~ [TTB004] */
  IF ~~ THEN JOURNAL #54312 /* ~I found the angel Ravel spoke of, "Trias," imprisoned in Curst. To think the citizens would treat an angel in such a way... this really is a city of cutthroats and back stabbers. Not that that's any different from any of the OTHER places I've been to.~ */ GOTO 6
END

IF ~~ THEN BEGIN 116 // from: 0.4 0.5
  SAY #61295 /* ~The deva raises its head and rests its gaze upon you. His voice is pure and melodic. "What is it you wish of me, mortal? Speak your mind and leave me to my memories of paradise." Before you can answer, the deva's face tightens and changes to a frown.~ [TTB004] */
  IF ~~ THEN JOURNAL #54312 /* ~I found the angel Ravel spoke of, "Trias," imprisoned in Curst. To think the citizens would treat an angel in such a way... this really is a city of cutthroats and back stabbers. Not that that's any different from any of the OTHER places I've been to.~ */ GOTO 7
END

IF ~~ THEN BEGIN 117 // from: 2.0 2.2
  SAY #61296 /* ~"Have you my blade?"~ */
  IF ~  !PartyHasItem("Celestia")
~ THEN REPLY #61297 /* ~"Not yet. I need to ask you some more questions..."~ */ GOTO 10
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #61298 /* ~"I'm sure it's around here somewhere. First, I *really* need to ask you some questions..."~ */ GOTO 10
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #61299 /* ~"I have your sword."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #61300 /* ~"Never mind. I'll be back."~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from: 18.0
  SAY #61305 /* ~"Will you not free me, mortal? I... may have knowledge that will prove beneficial..."~ */
  IF ~~ THEN REPLY #61306 /* ~"I just wanted some questions answered..."~ */ GOTO 17
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #61307 /* ~Strike a blow against the chains.~ */ GOTO 20
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #61308 /* ~Strike the deva.~ */ GOTO 19
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #61308 /* ~Strike the deva.~ */ EXTERN ~DGRACE~ 181
  IF ~~ THEN REPLY #61309 /* ~Leave.~ */ EXIT
END

IF WEIGHT #7 ~  Global("Current_Area","GLOBAL",901)
GlobalLT("Curst_Counter","GLOBAL",3)
NearbyDialog("DVhail")
~ THEN BEGIN 119 // from:
  SAY #61310 /* ~Trias' eyes are aflame with righteousness. "These people... they are betrayers, liars, murderers... they have earned their fate."~ [TTB111] */
  IF ~~ THEN GOTO 64
END

IF WEIGHT #8 ~  Global("Current_Area","GLOBAL",901)
GlobalLT("Curst_Counter","GLOBAL",3)
!NearbyDialog("DVhail")
~ THEN BEGIN 120 // from:
  SAY #61311 /* ~Trias' eyes are aflame with righteousness. "These people... they are betrayers, liars, murderers... they have earned their fate."~ [TTB111] */
  IF ~~ THEN GOTO 65
END

IF WEIGHT #9 ~  Global("Current_Area","GLOBAL",901)
GlobalGT("Curst_Counter","GLOBAL",2)
GlobalLT("Curst_Counter","GLOBAL",6)
NearbyDialog("DVhail")
~ THEN BEGIN 121 // from:
  SAY #61312 /* ~Trias looks at you with disdain. "And so the dogs return."~ [TTB100] */
  IF ~~ THEN GOTO 66
END

IF WEIGHT #10 ~  Global("Current_Area","GLOBAL",901)
GlobalGT("Curst_Counter","GLOBAL",2)
GlobalLT("Curst_Counter","GLOBAL",6)
!NearbyDialog("DVhail")
~ THEN BEGIN 122 // from:
  SAY #61313 /* ~Trias looks at you with disdain. "And so the dogs return."~ [TTB100] */
  IF ~~ THEN GOTO 67
END

IF WEIGHT #11 ~  Global("Current_Area","GLOBAL",901)
GlobalGT("Curst_Counter","GLOBAL",5)
NearbyDialog("DVhail")
~ THEN BEGIN 123 // from:
  SAY #61316 /* ~"What do you hope to accomplish here?"~ [TTB106] */
  IF ~~ THEN GOTO 68
END

IF WEIGHT #12 ~  Global("Current_Area","GLOBAL",901)
GlobalGT("Curst_Counter","GLOBAL",5)
!NearbyDialog("DVhail")
~ THEN BEGIN 124 // from:
  SAY #61317 /* ~"What do you hope to accomplish here?"~ [TTB106] */
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 125 // from: 0.2
  SAY #61293 /* ~The deva raises its head and rests its gaze upon you. His voice is pure and melodic. "What is it you wish of me, mortal? Speak your mind and leave me to my memories of paradise." Before you can answer, the deva's face tightens and changes to a frown.~ [TTB004] */
  IF ~~ THEN JOURNAL #54312 /* ~I found the angel Ravel spoke of, "Trias," imprisoned in Curst. To think the citizens would treat an angel in such a way... this really is a city of cutthroats and back stabbers. Not that that's any different from any of the OTHER places I've been to.~ */ EXTERN ~DGRACE~ 176
END

IF ~~ THEN BEGIN 126 // from: 0.3
  SAY #61293 /* ~The deva raises its head and rests its gaze upon you. His voice is pure and melodic. "What is it you wish of me, mortal? Speak your mind and leave me to my memories of paradise." Before you can answer, the deva's face tightens and changes to a frown.~ [TTB004] */
  IF ~~ THEN JOURNAL #54312 /* ~I found the angel Ravel spoke of, "Trias," imprisoned in Curst. To think the citizens would treat an angel in such a way... this really is a city of cutthroats and back stabbers. Not that that's any different from any of the OTHER places I've been to.~ */ EXTERN ~DGRACE~ 177
END
