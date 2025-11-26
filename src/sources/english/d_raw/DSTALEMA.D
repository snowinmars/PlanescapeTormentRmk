// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTALEMA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTALEMA~

IF ~  Global("Stale_Mary","GLOBAL",0)
!CreatureInArea("AR1501")
~ THEN BEGIN 0 // from:
  SAY #2991 /* ~This musty-smelling female zombie looks exceptionally old, almost mummified. Her skin has the appearance of moldering, gray-green leather, and one of her eyes has fallen out, leaving a dark pit in her face. Her voice is slow and thick: "Guh-guh-guhreeetingz."~ */
  IF ~~ THEN REPLY #2992 /* ~"Greetings..."~ */ DO ~SetGlobal("Stale_Mary","GLOBAL",1)
SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #22185 /* ~"Greetings, and farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #22189 /* ~She indicates herself and speaks again. "Suh-suh-stuhl Muhhhry." It sounds as if her vocal cords are festering away in some soupy mess at the base of her throat.~ */
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #22191 /* ~"Stale Mary? I had some questions..."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #22192 /* ~"Stale Mary? I had some questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22193 /* ~"I must take my leave now, Mary. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY #22195 /* ~The corpse nods slowly in reply.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #22196 /* ~"I had some questions..."~ */ GOTO 14
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #22197 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #22198 /* ~"I must take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.1 4.2 45.0
  SAY #22200 /* ~She nods her head, awaiting your question.~ */
  IF ~  Global("Hargrimm_Clue","AR1500",1)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #22201 /* ~"Hargrimm said that I needed to *learn* to listen to you... do you know what he meant by that?"~ */ GOTO 6
  IF ~  Global("DN_Appeal","AR1500",1)
~ THEN REPLY #22202 /* ~"Mary, I need to speak with the Silent King. Can you help me?"~ */ GOTO 4
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #22203 /* ~"Why have I been made a prisoner?"~ */ GOTO 4
  IF ~~ THEN REPLY #22205 /* ~"Where am I?"~ */ GOTO 4
  IF ~~ THEN REPLY #22207 /* ~"What are you doing here?"~ */ GOTO 4
  IF ~~ THEN REPLY #22209 /* ~"Who inhabits this place?"~ */ GOTO 4
  IF ~~ THEN REPLY #22210 /* ~"Let me ask you of someone in particular..."~ */ GOTO 4
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #22211 /* ~"Have you seen a small, bronze sphere anywhere here?"~ */ GOTO 4
  IF ~~ THEN REPLY #22212 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.2 3.3 3.4 3.5 3.6 3.7
  SAY #22214 /* ~She mumbles and groans a stuttering, completely incomprehensible phrase.~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #22215 /* ~"My apologies, but I can't understand you. Would there be a better way for us to communicate?"~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #22216 /* ~"I can't understand you. Can't you speak any more clearly?"~ */ GOTO 5
  IF ~~ THEN REPLY #22217 /* ~"Er... I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #22218 /* ~"Never mind... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #22219 /* ~She shakes her head sadly, her shoulders rising up in a painfully slow shrug.~ */
  IF ~~ THEN REPLY #22221 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 4.0 14.1 14.5
  SAY #22223 /* ~The corpse takes a step towards you, reaching her arm out to touch you.~ */
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #22224 /* ~Take a step back.~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #22226 /* ~Take a step back.~ */ GOTO 8
  IF ~~ THEN REPLY #22227 /* ~Let her touch you.~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #22228 /* ~"What are you doing?"~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #22229 /* ~"What are you doing?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.3
  SAY #22268 /* ~She only moans softly in reply, reaching out once more to touch your arm. ~ */
  IF ~~ THEN REPLY #22269 /* ~Allow her to touch you.~ */ GOTO 9
  IF ~~ THEN REPLY #22270 /* ~"I must take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 6.4
  SAY #22271 /* ~She only moans softly in reply, reaching out once more to touch your arm. Despite the ravages of time, there is still some vestige of humanity left in her gaze. You can see she means you no harm.~ */
  IF ~~ THEN REPLY #22272 /* ~Allow her to touch you.~ */ GOTO 9
  IF ~~ THEN REPLY #22273 /* ~"I must take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2 7.0 8.0
  SAY #22274 /* ~Her nearly fleshless hand brushes gently against your forearm, and she speaks: "Luhhhssnnn." (Listen.)~ */
  IF ~~ THEN REPLY #22275 /* ~"How did you do that?"~ */ GOTO 10
  IF ~~ THEN REPLY #22276 /* ~"How is it that I can understand you?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #22277 /* ~She touches you once more. "Spuhhhkkk tuuuh uhhh yuhhhh kuhnn. Buhuuhhh mhuuusssst duhh uhhht puhhhpuhhleee." (Speak to us you can. But you must do it properly.)~ */
  IF ~~ THEN REPLY #22278 /* ~"Can you teach me?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #22279 /* ~She smiles, the hardened skin of her face creaking like thick leather. "Yuhhh." (Yes.)~ */
  IF ~~ THEN REPLY #22280 /* ~"Please do, then..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
ApplySpell(Protagonist,SPECIAL_ADD_STORIES_BONES_TELL)
SetGlobal("Speak_With_Dead","GLOBAL",1)
GiveExperience(Protagonist,3750)
~ JOURNAL #21911 /* ~Stale Mary shared with me the knowledge of how to speak with the dead. I can now converse with corpses that haven't been too long dead for their previous occupants to speak through them.~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #22282 /* ~She finishes teaching you the skills required to speak with the dead, a process she calls 'Stories-Bones-Tell.'~ */
  IF ~~ THEN REPLY #22283 /* ~"Can I talk to any dead body?"~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #22284 /* ~"Suhmmm. Uhhhhers tuh duhhhud. Muhhht yuhhhh skuhhhh." (Some. Others too dead. Must use skill.)~ */
  IF ~~ THEN REPLY #22285 /* ~"Thanks. I had some questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22286 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.1 2.0 13.0 15.1 16.2 17.4 18.3 19.2 20.3 21.1 22.2 23.5 24.2 25.2 26.1 27.2 28.3 29.2 30.2 31.2 32.2 33.2 34.2 35.1 36.1 37.3 38.1 39.0 40.1 41.2 42.2 43.1 44.0 45.1 46.0 52.2 54.0
  SAY #22287 /* ~She nods her head, awaiting your question.~ */
  IF ~  Global("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Good_Mary_2","GLOBAL",0)
~ THEN REPLY #50859 /* ~"My companion has been kidnapped by a powerful man who demands a 'greater' skull for my companion's release. What should I do, Mary?"~ */ GOTO 52
  IF ~  Global("Hargrimm_Clue","AR1500",1)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #23858 /* ~"Hargrimm said that I needed to *learn* to listen to you... do you know what he meant by that?"~ */ GOTO 6
  IF ~  Global("DN_Appeal","AR1500",1)
CheckStatGT(Protagonist,15,CHR)
Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #22288 /* ~"Mary, I need to speak with the Silent King. Can you help me?"~ */ GOTO 42
  IF ~  Global("DN_Appeal","AR1500",1)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #22289 /* ~"Mary, I need to speak with the Silent King. Can you help me?"~ */ GOTO 43
  IF ~  Global("DN_Appeal","AR1500",1)
CheckStatLT(Protagonist,9,CHR)
Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #22290 /* ~"Mary, I need to speak with the Silent King. Can you help me?"~ */ GOTO 44
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #64163 /* ~"How is it that you speak to these other zombies? I cannot understand them as I can you..."~ */ GOTO 6
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #22291 /* ~"Why have I been made a prisoner?"~ */ GOTO 40
  IF ~~ THEN REPLY #22292 /* ~"Where am I?"~ */ GOTO 15
  IF ~~ THEN REPLY #22293 /* ~"What are you doing here?"~ */ GOTO 16
  IF ~~ THEN REPLY #22294 /* ~"Who inhabits this place?"~ */ GOTO 17
  IF ~~ THEN REPLY #22295 /* ~"Let me ask you of someone in particular..."~ */ GOTO 23
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #22296 /* ~"Have you seen a small, bronze sphere anywhere here?"~ */ GOTO 39
  IF ~~ THEN REPLY #22297 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.7
  SAY #22298 /* ~"Huhhhllls uffff Suhhlnnn Kuhnnng." (Halls of Silent King.)~ */
  IF ~~ THEN REPLY #22299 /* ~"Tell me about the Silent King."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #22300 /* ~"I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22301 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.8 37.0 41.0
  SAY #22302 /* ~"Guuhhhd uuuhd zzzohhhhmmmb. Cuhrrr fuhhrrr kuh-kuwht whunnns." (Guide other zombies. Care for quiet ones.)~ */
  IF ~~ THEN REPLY #22303 /* ~"Tell me about the other zombies."~ */ GOTO 18
  IF ~~ THEN REPLY #22304 /* ~"Quiet ones?"~ */ GOTO 38
  IF ~~ THEN REPLY #22305 /* ~"I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22306 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.9 18.2 19.1 20.2 21.0 22.1
  SAY #22307 /* ~"Zzzohhhmmmb. Ssskeeelllt. Guh-guh-gooooolll. Rrrrahhhhts." (Zombies. Skeletons. Ghouls. Rats.)~ */
  IF ~~ THEN REPLY #22308 /* ~"Tell me about the zombies."~ */ GOTO 18
  IF ~~ THEN REPLY #22309 /* ~"Tell me about the skeletons."~ */ GOTO 20
  IF ~~ THEN REPLY #22310 /* ~"Tell me about the ghouls."~ */ GOTO 21
  IF ~~ THEN REPLY #22311 /* ~"Tell me about the rats."~ */ GOTO 22
  IF ~~ THEN REPLY #22312 /* ~"I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22313 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.0 17.0 38.0
  SAY #22314 /* ~"Duhhh whu-whu-whuuuk uhhhh Suhhlnnn Kuhnnng." (Do work of Silent King.)~ */
  IF ~~ THEN REPLY #22315 /* ~"What sort of work?"~ */ GOTO 19
  IF ~~ THEN REPLY #22316 /* ~"Tell me about the Silent King."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #22317 /* ~"Who else inhabits this place?"~ */ GOTO 17
  IF ~~ THEN REPLY #22318 /* ~"I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22319 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #22320 /* ~"Rhuuuuhhhb thhhht whuuuchhh huhhh b-b-bhhooork. Cuhrrr fuhhrrr thuh truh duhhhd." (Rebuild that which has been broken. Care for the true dead.)~ */
  IF ~~ THEN REPLY #22321 /* ~"Tell me about the Silent King."~ */ GOTO 24
  IF ~~ THEN REPLY #22322 /* ~"Who else inhabits this place?"~ */ GOTO 17
  IF ~~ THEN REPLY #22323 /* ~"I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22324 /* ~"That's all I wished to know. Farewell."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.1
  SAY #22325 /* ~"Hhhhuhhhg-rrrrm, thhhhur lllehhhd, ghuuuvsss usss thwuhhhd uhhhh Suhhlnnn Kuhnnng. Ssskeeelllts ghuuudsss uunnn uurh whuuhk." (Hargrimm, their leader, gives us the word of Silent King. Skeletons guide us in our work.)~ */
  IF ~~ THEN REPLY #22326 /* ~"Tell me about Hargrimm."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY #22327 /* ~"Tell me about the Silent King."~ */ GOTO 24
  IF ~~ THEN REPLY #22328 /* ~"Who else inhabits this place?"~ */ GOTO 17
  IF ~~ THEN REPLY #22329 /* ~"I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22330 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.2 22.0
  SAY #22331 /* ~"Hunnnguhhh... uuhhhlwuhh hunnnguhhh." (Hungry... always hungry.)~ */
  IF ~~ THEN REPLY #22332 /* ~"Who else inhabits this place?"~ */ GOTO 17
  IF ~~ THEN REPLY #22333 /* ~"I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22334 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.3
  SAY #22335 /* ~"Ghuuuhhhn. Gooools shhhaaayyy uhhhh." (Gone. Ghouls chase away.)~ */
  IF ~~ THEN REPLY #22336 /* ~"Tell me about the ghouls."~ */ GOTO 21
  IF ~~ THEN REPLY #22337 /* ~"Who else inhabits this place?"~ */ GOTO 17
  IF ~~ THEN REPLY #22338 /* ~"I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22339 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 14.10 24.1 25.1 26.0 27.1 28.2 29.1 30.1 31.1 32.1 33.1 34.1 35.0 36.0 37.2 41.1
  SAY #22340 /* ~"Uuuhhnn?" (Yes?)~ */
  IF ~~ THEN REPLY #22341 /* ~"Tell me of yourself."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 37
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #22342 /* ~"Tell me about the Silent King."~ */ GOTO 24
  IF ~  Global("Know_Hargrimm","GLOBAL",1)
!Dead("Hargrim")
~ THEN REPLY #22343 /* ~"Tell me about Hargrimm."~ */ GOTO 27
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #22344 /* ~"Tell me about Soego."~ */ GOTO 36
  IF ~  Global("Know_Acaste","GLOBAL",1)
!Dead("Acaste")
~ THEN REPLY #22345 /* ~"Tell me about Acaste."~ */ GOTO 35
  IF ~~ THEN REPLY #22346 /* ~"Never mind. I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22347 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 15.0 18.1 19.0 20.1 23.1
  SAY #22348 /* ~"Suhhhhhlunnnh Kuh-kuknnng." (Silent King.)~ */
  IF ~~ THEN REPLY #22349 /* ~"Yes, what can you tell me of him?"~ */ GOTO 25
  IF ~~ THEN REPLY #22350 /* ~"Never mind. Tell me of someone else."~ */ GOTO 23
  IF ~~ THEN REPLY #22351 /* ~"Never mind. I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22352 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #22353 /* ~"Suhhhhhlunnnh Kuh-kuknnng." (Silent King.)~ */
  IF ~~ THEN REPLY #22354 /* ~"What do you know of him?"~ */ GOTO 26
  IF ~~ THEN REPLY #22355 /* ~"Never mind. Tell me of someone else."~ */ GOTO 23
  IF ~~ THEN REPLY #22356 /* ~"Never mind. I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22357 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #22358 /* ~"Suhhhhhlunnnh Kuh-kuknnng." (Silent King.)~ */
  IF ~~ THEN REPLY #22359 /* ~"Never mind, then... tell me of someone else."~ */ GOTO 23
  IF ~~ THEN REPLY #22360 /* ~"Never mind, then... I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22361 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 20.0 23.2 40.0
  SAY #22362 /* ~"Hhhhuhhhg-rrrrm, ssskeeelllts lllehhhd, ghuuuvsss usss thwuhhhd uhhhh Suhhlnnn Kuhnnng. Cuh-cuhnnnshurnd. Wuhhhhrhhd." (Hargrimm, skeletons' leader, gives us the word of Silent King. Concerned. Worried.)~ */
  IF ~~ THEN REPLY #22363 /* ~"Why is he concerned?"~ */ DO ~SetGlobal("Know_Acaste","GLOBAL",1)
~ GOTO 28
  IF ~~ THEN REPLY #22364 /* ~"Tell me of someone else."~ */ GOTO 23
  IF ~~ THEN REPLY #22365 /* ~"I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22366 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #22367 /* ~"Suhhhguh. Uhhhcuhhhstuh." (Soego. Acaste.)~ */
  IF ~~ THEN REPLY #22368 /* ~"Why is he worried about Soego?"~ */ GOTO 29
  IF ~~ THEN REPLY #22369 /* ~"Why is he worried about Acaste?"~ */ GOTO 32
  IF ~~ THEN REPLY #22370 /* ~"Tell me of someone else."~ */ GOTO 23
  IF ~~ THEN REPLY #22371 /* ~"I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22372 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 34.0
  SAY #22373 /* ~"Suhhguh puhhhrrrkuuuh duhthuh." (Soego preaches death.)~ */
  IF ~~ THEN REPLY #22374 /* ~"Preaches death?"~ */ GOTO 30
  IF ~~ THEN REPLY #22375 /* ~"Tell me of someone else."~ */ GOTO 23
  IF ~~ THEN REPLY #22376 /* ~"I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22377 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #22378 /* ~"Wuhhhnnnzzz uhsss tuh-tuh-tuh duhhh." (Wants us to die.)~ */
  IF ~~ THEN REPLY #22379 /* ~"Why does he want you to die?"~ */ JOURNAL #22385 /* ~Stale Mary told me that Hargrimm, the Silent King's high priest, is worried about the Dustman, Soego. Soego has been trying to get the other undead of the Dead Nations to give up their 'un-life' and accept the True Death.~ */ GOTO 31
  IF ~~ THEN REPLY #22380 /* ~"Tell me of someone else."~ */ GOTO 23
  IF ~~ THEN REPLY #22382 /* ~"I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22383 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #22386 /* ~"Huh-hhhhh Duzzzzmunn." (He Dustman.)~ */
  IF ~~ THEN REPLY #22388 /* ~"Why is Hargrimm worried about Acaste?"~ */ GOTO 32
  IF ~~ THEN REPLY #22390 /* ~"Tell me of someone else."~ */ GOTO 23
  IF ~~ THEN REPLY #22391 /* ~"I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22393 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 28.1 31.0
  SAY #22395 /* ~"Uhhhcuhhhstuhhh... unnhguh." (Acaste... anger.)~ */
  IF ~~ THEN REPLY #22397 /* ~"Anger?"~ */ GOTO 33
  IF ~~ THEN REPLY #22399 /* ~"Tell me of someone else."~ */ GOTO 23
  IF ~~ THEN REPLY #22400 /* ~"I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22401 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #22402 /* ~"Uhhhcuhhhstuhhh wunnnn kuh-kuhllll uhh-uhhhvuhhhunnn." (Acaste want kill everyone.)~ */
  IF ~~ THEN REPLY #22403 /* ~"Why does she want to kill everyone?"~ */ GOTO 34
  IF ~~ THEN REPLY #22404 /* ~"Tell me of someone else."~ */ GOTO 23
  IF ~~ THEN REPLY #22405 /* ~"I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22406 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #22407 /* ~"Hunnnguhhh... unnnhgrrruhhh." (Hungry. Angry.)~ */
  IF ~~ THEN REPLY #22409 /* ~"Why is Hargrimm worried about Soego?"~ */ JOURNAL #22413 /* ~Stale Mary told me that Hargrimm, the Silent King's high priest, is worried about Acaste. She is a ghoul who seems intent on killing and eating everything in the Dead Nations.~ */ GOTO 29
  IF ~~ THEN REPLY #22410 /* ~"Tell me of someone else."~ */ GOTO 23
  IF ~~ THEN REPLY #22411 /* ~"I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22412 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 23.4
  SAY #22408 /* ~"Hunnnguhhh... unnnhgrrruhhh." (Hungry. Angry.)~ */
  IF ~~ THEN REPLY #22414 /* ~"Tell me of someone else."~ */ GOTO 23
  IF ~~ THEN REPLY #22416 /* ~"I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22418 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 23.3
  SAY #22419 /* ~"Huh-hhhhh Duzzzzmunn." (He Dustman.)~ */
  IF ~~ THEN REPLY #22420 /* ~"Tell me of someone else."~ */ GOTO 23
  IF ~~ THEN REPLY #22422 /* ~"I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22423 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 23.0
  SAY #22424 /* ~"Stuh-stuh-*stuhhh* Muhreee." (Stale Mary.)~ */
  IF ~~ THEN REPLY #22426 /* ~"What do you do, here?"~ */ GOTO 16
  IF ~~ THEN REPLY #22428 /* ~"How did you come to be here?"~ */ GOTO 41
  IF ~~ THEN REPLY #22430 /* ~"Tell me of someone else."~ */ GOTO 23
  IF ~~ THEN REPLY #22429 /* ~"I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22432 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 16.1
  SAY #22434 /* ~"Thuh truh duhhhd." (The true dead.)~ */
  IF ~~ THEN REPLY #22436 /* ~"Tell me about the other zombies."~ */ GOTO 18
  IF ~~ THEN REPLY #22438 /* ~"I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22439 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 14.11
  SAY #22440 /* ~"Nuuhhhh, sssuuhhh." (No, sorry.)~ */
  IF ~~ THEN REPLY #22442 /* ~"I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22443 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 14.6
  SAY #22445 /* ~She shrugs. "Uuhhhsssk Hhhhuhhhg-rrrrm." (Ask Hargrimm.)~ */
  IF ~~ THEN REPLY #22447 /* ~"Tell me about Hargrimm."~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY #22449 /* ~"I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22451 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 37.1
  SAY #22453 /* ~"Duhhhhd luhhhnnn tuhhhmmm. Muhhhhmuhrrr guhhhnnn." (Dead long time. Memory gone.)~ */
  IF ~~ THEN REPLY #22454 /* ~"What do you do, here?"~ */ GOTO 16
  IF ~~ THEN REPLY #22455 /* ~"Tell me of someone else."~ */ GOTO 23
  IF ~~ THEN REPLY #22457 /* ~"I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22459 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 14.2
  SAY #22460 /* ~"Whuh?" (Why?)~ */
  IF ~  Global("Alcove_Portal","AR1500",0)
~ THEN REPLY #22462 /* ~"I need to leave this place, Mary. I've so much to do... and to be imprisoned here, simply for stumbling upon the Dead Nations... it isn't right. Please... I ask only for a modicum of compassion. Can you help me?"~ */ DO ~AddexperienceParty(3750)
~ GOTO 47
  IF ~  GlobalGT("Alcove_Portal","AR1500",0)
~ THEN REPLY #22462 /* ~"I need to leave this place, Mary. I've so much to do... and to be imprisoned here, simply for stumbling upon the Dead Nations... it isn't right. Please... I ask only for a modicum of compassion. Can you help me?"~ */ GOTO 47
  IF ~~ THEN REPLY #22464 /* ~"Never mind. I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22465 /* ~"Never mind, for now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 14.3
  SAY #22467 /* ~"Whuh?" (Why?)~ */
  IF ~~ THEN REPLY #22468 /* ~"I need to leave this place."~ */ GOTO 44
  IF ~~ THEN REPLY #22471 /* ~"Never mind. I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22472 /* ~"Never mind, for now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 14.4 43.0
  SAY #22474 /* ~"Nuhhh." (No.)~ */
  IF ~~ THEN REPLY #22478 /* ~"Then I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22479 /* ~"Farewell, then."~ */ EXIT
END

IF ~  Global("Stale_Mary","GLOBAL",1)
Global("Speak_With_Dead","GLOBAL",0)
!CreatureInArea("AR1501")
~ THEN BEGIN 45 // from:
  SAY #22480 /* ~You see Stale Mary. When she finally notices you, she groans softly: "Guh-guhruuuhhh..."~ */
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #22481 /* ~"I had some questions..."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #22482 /* ~"I had some questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #60478 /* ~"Just passing by. Farewell."~ */ EXIT
END

IF ~  Global("Stale_Mary","GLOBAL",1)
Global("Speak_With_Dead","GLOBAL",1)
!CreatureInArea("AR1501")
~ THEN BEGIN 46 // from:
  SAY #22483 /* ~You see Stale Mary. When she finally notices you, she groans softly: "Guh-guhruuuhhh..." (Greetings.)~ */
  IF ~~ THEN REPLY #22484 /* ~"I had some questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #22485 /* ~"Just passing by. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 42.0 42.1
  SAY #22486 /* ~Stale Mary is quiet for a time, then nods. She points to the first of the three portals along the northern wall. "C-c-cluuhh ayyysss. Thuuuh uh Suhhhlunnh Kuh-kuknnng. Wwhhhuuuhbh uuhhhnd nuuuheehhh ahhhlllk-ku-kuuuhh. Bhu-bhu-buhhh uhn suuuhhh lhuuung ayyye lhhhuuuv." (Close eyes. Think of Silent King. Walk through northwest alcove. But only so long as I live.)~ */
  IF ~  Global("Alcove_Portal","AR1500",0)
~ THEN REPLY #22487 /* ~"Thanks, Mary. Farewell."~ */ DO ~SetGlobal("Alcove_Portal","AR1500",1)
~ JOURNAL #22488 /* ~Stale Mary told me that, in order to reach the Silent King's throne room, I could use a portal in her chambers. I must close my eyes and think of the Silent King before stepping into the alcove in the northwest corner. The portal should work as long as Stale Mary is still alive.~ */ EXIT
  IF ~  GlobalGT("Alcove_Portal","AR1500",0)
~ THEN REPLY #22487 /* ~"Thanks, Mary. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from:
  SAY #24104 /* ~"Luhnnngg." (Long.)~ */
  IF ~~ THEN EXTERN ~DHARGRI~ 81
END

IF ~~ THEN BEGIN 49 // from:
  SAY #24106 /* ~Stale Mary speaks, her voice ponderous: "Nuh-nuh-nor I." (Nor I.)~ */
  IF ~~ THEN EXTERN ~DHARGRI~ 87
END

IF ~~ THEN BEGIN 50 // from:
  SAY #24107 /* ~"Yuhhh." (Yes.)~ */
  IF ~~ THEN EXTERN ~DHARGRI~ 95
END

IF ~~ THEN BEGIN 51 // from:
  SAY #24109 /* ~Stale Mary makes a faint gurgling sound.~ */
  IF ~~ THEN EXTERN ~DHARGRI~ 97
END

IF ~~ THEN BEGIN 52 // from: 14.0
  SAY #50845 /* ~"Yuhhhrrr f-f-f-rehhhnd? Tuh-tuh-tuhk muhhh ssskuhhl..." (Your friend? Take my skull.) Stale Mary grips her head in both her hands...~ */
  IF ~~ THEN REPLY #50846 /* ~"Take... your skull? But that'll kill you."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mary_1","GLOBALGood",1)
~ GOTO 53
  IF ~~ THEN REPLY #50847 /* ~"Uh... all right. Thanks..."~ */ DO ~Kill(Myself)
~ GOTO 55
  IF ~~ THEN REPLY #50848 /* ~"Wait... I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #50849 /* ~"We'll discuss it later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #50850 /* ~Mary slowly shakes her head side to side - her splitting lips form what might be a sad smile. "Kuh-kill? N-n-nuuuh. Mmm uhhhlrrruhhhdy dhhhud." (Kill? No. I'm already dead.) Her hands remain at her temples, awaiting your reply.~ */
  IF ~~ THEN REPLY #50851 /* ~"Thanks, Mary. I'll take your skull to Lothar."~ */ DO ~Kill(Myself)
~ GOTO 55
  IF ~~ THEN REPLY #50852 /* ~"No, Mary - I just can't. I'll find another way."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mary_2","GLOBALGood",1)
~ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.1
  SAY #50854 /* ~Mary nods. "Y-y-yuh hhhuf uhhh kinnnd hhhuhhhrt." (You have a kind heart.)~ */
  IF ~~ THEN REPLY #50855 /* ~"I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #50856 /* ~"Farewell, Mary."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 52.1 53.0
  SAY #50857 /* ~With a sickening, wet wrenching sound, Stale Mary tears her head from her shoulders. Her rotten body collapses in a stinking heap shortly after passing you her skull.~ */
  IF ~~ THEN REPLY #50858 /* ~Put the head away, leave.~ */ EXIT
END

IF ~  CreatureInArea("AR1501")
~ THEN BEGIN 56 // from:
  SAY #58912 /* ~Mary nods towards the double doors at the southern end of the throne room. "L-L-Luuhhhv hhheeere nooowww. Wuhhhl tuhhhlk ughhhahn lllaaatuhhhr..." (Leave here, now. We'll talk again later.)~ */
  IF ~~ THEN REPLY #58913 /* ~Leave.~ */ EXIT
END
