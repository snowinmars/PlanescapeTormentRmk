// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCINDER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCINDER~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #34264 /* ~You see a large, blustery merchant. He looks to be totally hairless, and his pale yellow skin is scarred as if from burns. He looks at you intently as you approach.~ */
  IF ~~ THEN REPLY #34265 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #34266 /* ~Ignore the man.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34267 /* ~He smiles at you. "Greetin's, I'm Cinder. I heard aboutcha'. Ye be the scarred clueless fella that be goin' around the Wards askin' questions. What can I be helpin' you with?"~ */
  IF ~~ THEN REPLY #34268 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #34269 /* ~"You look like you have a few scars yourself."~ */ GOTO 13
  IF ~~ THEN REPLY #34270 /* ~"Nothing, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 5.0 9.0 10.0 13.1 14.1 15.0 16.0 17.1 18.2 20.1 21.2 22.2 23.1 24.2 25.1 26.1 28.1
  SAY #34271 /* ~"I'd be pleased t'answer yer questions..." He narrows his eyes and gives you a sly smile. "About the shop an' the wares y'see here, that is. I'm not no tout, I'm not."~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #34272 /* ~"I'm looking for someone named Lothar, or the Master of the Bones..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #34273 /* ~"I had a skull and it's been stolen from me. Do you know anyone who would do such a thing?"~ */ GOTO 4
  IF ~~ THEN REPLY #34274 /* ~"I need to buy some weapons."~ */ GOTO 9
  IF ~~ THEN REPLY #34275 /* ~"I need to buy some magic items."~ */ GOTO 10
  IF ~~ THEN REPLY #34276 /* ~"I'm interested in spells."~ */ GOTO 11
  IF ~~ THEN REPLY #34277 /* ~"What is this place?"~ */ GOTO 17
  IF ~~ THEN REPLY #34278 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #34279 /* ~He frowns in thought. "Lothar... Master of the... nay, can't say it rings a bell."~ */
  IF ~~ THEN REPLY #34280 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #34281 /* ~"Thank you, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #34282 /* ~He frowns. "A skull? Ye mean a... skull?"~ */
  IF ~~ THEN REPLY #34283 /* ~"Yes, a skull."~ */ GOTO 5
  IF ~~ THEN REPLY #34284 /* ~"No, I'm joking with you."~ */ GOTO 6
  IF ~~ THEN REPLY #34285 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #34286 /* ~He gives you a confused look. "I can't see any reason fer ye to have a skull, let alone why some berk would steal it from ye."~ */
  IF ~~ THEN REPLY #34287 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #34288 /* ~"Thank you, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #34289 /* ~He gives you an annoyed look. "It's plain that we're about two different sorts of business, cutter. Come back when ye need ta do some serious business."~ */
  IF ~~ THEN REPLY #34290 /* ~"I have some more questions for you..."~ */ GOTO 7
  IF ~~ THEN REPLY #34291 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #34292 /* ~He looks angry. "I care not fer questions. Will ye be lookin' to *buy* somethin'? I'm a man without as long a life, as I'd like to be standin' answerin' yer questions. If ye need chatter, talk ta that shiftless boy, Lazlo. That boy will talk circles around the Great Rings themselves, given a half-chance."~ */
  IF ~~ THEN REPLY #34293 /* ~"Lazlo?"~ */ GOTO 8
  IF ~~ THEN REPLY #34294 /* ~"Thank you, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #34295 /* ~He nods. "He usually tends the furnace."~ */
  IF ~~ THEN REPLY #34296 /* ~"Thank you, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.2
  SAY #34297 /* ~He gestures across the market. "Ye be wantin' Anze then. His kip's over by the furnace."~ */
  IF ~~ THEN REPLY #34298 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #34299 /* ~"Thank you, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.3
  SAY #34300 /* ~He gestures across the market. "Ye be wantin' Aalek then. He sets his kip up on the far end over by the furnace."~ */
  IF ~~ THEN REPLY #34301 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #34302 /* ~"Thank you, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.4 16.1
  SAY #34303 /* ~He smiles. "I think I can help ye. Let me show ye my wares."~ */
  IF ~~ THEN REPLY #34304 /* ~"All right."~ */ DO ~StartStore("Cindstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34305 /* ~"Never mind, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY #34306 /* ~Null node~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.1
  SAY #34310 /* ~He frowns then begins to laugh. "Aye, that I do. Few years' back I had me a kip set up in the Hive. Some barmy mage decided ta burn the ward right out o' Sigil. Almost took me with it. Sick fer a month, I was."~ */
  IF ~~ THEN REPLY #34311 /* ~"A month? That's not all that long."~ */ GOTO 14
  IF ~~ THEN REPLY #34312 /* ~"I see. I have some questions for you..."~ */ GOTO 2
  IF ~~ THEN REPLY #34313 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #34314 /* ~He nods and gets a far away look for a moment. "Aye, it coulda' been worse. Local mage healed me, fixed the scars'n all. Coulda grown my hair back but I kinda like the look."~ */
  IF ~~ THEN REPLY #34315 /* ~"Do you think this mage could help me with my scars?"~ */ GOTO 15
  IF ~~ THEN REPLY #34316 /* ~"I see. I have some questions for you..."~ */ GOTO 2
  IF ~~ THEN REPLY #34317 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #34318 /* ~He looks you over, then shrugs. "I don't see why not. Yer scars don't look that bad..." He looks at you closely. "Aye, now who's ta say. Ye should talk to 'em yerself. Names Sebastion, an' he sets his kip up over by the Foundry."~ */
  IF ~~ THEN REPLY #34319 /* ~"I may do that. I have some questions for you..."~ */ GOTO 2
  IF ~~ THEN REPLY #34320 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 16 // from:
  SAY #34321 /* ~Cinder smiles at you. "Come again, have ye? What can I be showin' you this time?"~ */
  IF ~~ THEN REPLY #34322 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #34323 /* ~"I'm in need of some spells."~ */ GOTO 11
  IF ~~ THEN REPLY #34324 /* ~"Nothing, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.5
  SAY #34325 /* ~He proudly gestures around him. "It's the open-air market, one of the best shops that be in Sigil. Fortune smiles on ye to have entered it, cutter. We have an empty stall." He points to the stall next to his. "If ye be a merchant yerself, ye can just set up yer kip an' barter with the rest of us as long as ye isn't too loud or too much of a bother..."~ */
  IF ~~ THEN REPLY #34326 /* ~"Why is that stall empty?"~ */ GOTO 18
  IF ~~ THEN REPLY #34327 /* ~"I'll keep that in mind. I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #34328 /* ~"Thank you, I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #34329 /* ~He glances at the empty stall. "Merchant by the name of Zac had his kip there. Got himself a page in the dead-book recently." He frowns. "Strange story, that."~ */
  IF ~~ THEN REPLY #34330 /* ~"Strange in what way?"~ */ GOTO 19
  IF ~~ THEN REPLY #34331 /* ~"The dead-book?"~ */ GOTO 25
  IF ~~ THEN REPLY #34332 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #34333 /* ~"Thank you, I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 25.0
  SAY #34334 /* ~He thinks for a moment. "Well... I don't know the dark of it all, but Zac had a bit of business trouble an' needed some coin. He got himself a loan from Byron Pikit the moneylender. After that, Pikit started tryin' ta take the business from him but Zac refused." He pauses.~ */
  IF ~~ THEN REPLY #34335 /* ~"Go on."~ */ DO ~SetGlobal("Know_Byron","GLOBAL",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #34336 /* ~He sighs and shakes his head. "Not long after that, Zac was a deader. Pikit took his widow, Trist, ta court ta get the jink Zac owed. She claimed the debt was paid an' said she had the papers ta prove it... but they turned up missin'."~ */
  IF ~~ THEN REPLY #34337 /* ~"So what happened?"~ */ GOTO 21
  IF ~~ THEN REPLY #34338 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #34339 /* ~"Thank you, I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #34340 /* ~He shrugs. "With no proof of the debt bein' paid, the business was sold an' the widow Trist held responsible fer the remainin' debt. She couldn't pay so it's the block fer her." ~ */
  IF ~~ THEN REPLY #34341 /* ~"The block?"~ */ GOTO 22
  IF ~~ THEN REPLY #34342 /* ~"You said something about missing papers."~ */ JOURNAL #31880 /* ~Someone named Byron Pikit may be doing some shady business dealings. It looks like he may have killed a merchant named Zac and then stole some documents from his widow, Trist. Without these documents Trist cannot prove she paid off some loans and she is to be sold into slavery to cover the debt. Maybe I'll look into this.~ */ GOTO 24
  IF ~~ THEN REPLY #34343 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #34344 /* ~"Thank you, I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #34345 /* ~"Aye, the auction block. If ye can't pay yer debts, ye get sold into service fer a few years as punishment." He shakes his head sadly.~ */
  IF ~~ THEN REPLY #34346 /* ~"Where can I find the block?"~ */ GOTO 23
  IF ~~ THEN REPLY #34347 /* ~"You said something about missing papers."~ */ JOURNAL #31880 /* ~Someone named Byron Pikit may be doing some shady business dealings. It looks like he may have killed a merchant named Zac and then stole some documents from his widow, Trist. Without these documents Trist cannot prove she paid off some loans and she is to be sold into slavery to cover the debt. Maybe I'll look into this.~ */ GOTO 24
  IF ~~ THEN REPLY #34348 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #34349 /* ~"Thank you, I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #34350 /* ~"Head north from the market. Ye can't miss it 'cause of the crowd." ~ */
  IF ~~ THEN REPLY #34351 /* ~"You said something about missing papers."~ */ JOURNAL #31880 /* ~Someone named Byron Pikit may be doing some shady business dealings. It looks like he may have killed a merchant named Zac and then stole some documents from his widow, Trist. Without these documents Trist cannot prove she paid off some loans and she is to be sold into slavery to cover the debt. Maybe I'll look into this.~ */ GOTO 24
  IF ~~ THEN REPLY #34352 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #34353 /* ~"Thank you, I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.1 22.1 23.0
  SAY #34354 /* ~"Aye. Trist be sayin that her husband Zac paid the loan in full an' that she had the papers ta prove it. When she went ta get em, they was gone." He snorts and looks angry. "I'd be layin' jink down that Pikit be behind it."~ */
  IF ~~ THEN REPLY #34355 /* ~"Where can I find this Pikit?"~ */ GOTO 26
  IF ~~ THEN REPLY #34356 /* ~"Is anyone looking into this matter?"~ */ DO ~SetGlobal("Corvus_Zac","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY #34357 /* ~"I see. I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #66229 /* ~"Thank you. I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 18.1
  SAY #34358 /* ~He gives you a strange look. "Aye, be ye clueless? He got himself killed an' written into the dead-book."~ */
  IF ~~ THEN REPLY #34359 /* ~"I see. So, you were telling me about the empty stall."~ */ GOTO 19
  IF ~~ THEN REPLY #34360 /* ~"I see. I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #34361 /* ~"Thank you. I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.0 28.0
  SAY #34362 /* ~"Sets his kip up right outside the market, cutter. Ye can't miss em."~ */
  IF ~~ THEN REPLY #34356 /* ~"Is anyone looking into this matter?"~ */ DO ~SetGlobal("Corvus_Zac","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY #34363 /* ~"I see. I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #34364 /* ~"Thank you. I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.1 26.0
  SAY #66230 /* ~"Aye, the Harmonium..." He pauses for a moment and then sighs. "No evidence of wrong doin' could be found of course. Corvus, one of the Harmonium guards here at the market, is real interested in findin' what happened ta Zac. If anythin' were ta be found, he'd be the one ta take it to..."~ */
  IF ~~ THEN REPLY #66231 /* ~"Where can I find Corvus?"~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #66232 /* ~"You can usually find him over there, by the west exit." He sighs. "Would there be anythin' else ye need ta know?"~ */
  IF ~~ THEN REPLY #66233 /* ~"Where can I find Byron Pikit?"~ */ GOTO 26
  IF ~~ THEN REPLY #66234 /* ~"I see. I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #66235 /* ~"Thank you. I must be going now. Farewell."~ */ EXIT
END
