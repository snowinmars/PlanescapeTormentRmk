// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOAX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOAX~

IF ~  Global("Coaxmetal","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3017 /* ~You see an iron... creature. Its size is staggering; if it stood full height, it would shatter the roof of the siege tower. Thundering echoes rattle the walkway as the creature hammers away on its forge, and the smell of soot and ash fills the air. ~ */
  IF ~~ THEN REPLY #3019 /* ~"Greetings."~ */ JOURNAL #67791 /* ~I found a way into the siege tower in the Lower Ward. Within the tower is an iron golem, almost the size of the tower itself. It seems to be forging weapons using a furnace within the tower. ~ */ GOTO 3
  IF ~~ THEN REPLY #3018 /* ~Leave the golem alone.~ */ EXIT
END

IF ~  GlobalGT("Coaxmetal","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #26210 /* ~The gigantic iron golem is still working at its forge. Sparks, ash and hissing clouds of steam rise up from beneath the walkway. ~ */
  IF ~  GlobalLT("Coaxmetal","GLOBAL",4)
~ THEN REPLY #26277 /* ~"I had some questions for you..."~ */ GOTO 2
  IF ~  Global("Coaxmetal","GLOBAL",4)
PartyHasItem("Cube")
~ THEN REPLY #26279 /* ~"I had some questions for you..."~ */ GOTO 59
  IF ~  Global("Coaxmetal","GLOBAL",4)
!PartyHasItem("Cube")
~ THEN REPLY #26280 /* ~"I had some questions for you..."~ */ GOTO 63
  IF ~~ THEN REPLY #26281 /* ~Leave the golem alone.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.2 5.2 6.4 7.1 8.1 9.1 10.1 11.1 12.1 13.4 14.4 15.1 16.0 17.2 18.1 19.1 20.1 21.1 22.0 23.1 24.1 25.0 26.1 27.1 28.0 29.1 30.1 31.0 33.0 34.1 35.1 36.1 37.3 38.1 39.2 40.1 41.1 42.1 43.1 44.1 45.1 46.1 50.0 65.1
  SAY #26211 /* ~ASK.~ */
  IF ~~ THEN REPLY #26283 /* ~"What are you?"~ */ GOTO 4
  IF ~~ THEN REPLY #26284 /* ~"What is this place?"~ */ GOTO 17
  IF ~  GlobalGT("Coaxmetal","GLOBAL",0)
~ THEN REPLY #26285 /* ~"What are you doing?"~ */ GOTO 5
  IF ~  GlobalGT("Coaxmetal","GLOBAL",1)
~ THEN REPLY #26286 /* ~"Why do you make weapons?"~ */ GOTO 7
  IF ~  GlobalGT("Coaxmetal","GLOBAL",1)
~ THEN REPLY #26287 /* ~"Can you tell me more of what you do with weapons?"~ */ GOTO 6
  IF ~  GlobalGT("Coaxmetal","GLOBAL",2)
~ THEN REPLY #26288 /* ~"Can you do anything with my weapons?"~ */ GOTO 64
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #26290 /* ~"What do you know of the Blood War?"~ */ GOTO 23
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #26291 /* ~"Have you heard of a night hag named Ravel?"~ */ GOTO 26
  IF ~  GlobalGT("Regret","GLOBAL",0)
~ THEN REPLY #26292 /* ~"Do you know of a citadel called the Fortress of Regrets?"~ */ GOTO 29
  IF ~  Global("Dream","GLOBAL",2)
Global("Coaxmetal_Gives_Cage","GLOBAL",0)
~ THEN REPLY #26294 /* ~"I need a heavy, decorated, wrought-iron birdcage. Do you have one?"~ */ DO ~GiveItemCreate("DrmCage",Protagonist,1,0,0)
SetGlobal("Coaxmetal_Gives_Cage","GLOBAL",1)
~ GOTO 32
  IF ~  Global("Regret","GLOBAL",0)
~ THEN REPLY #26295 /* ~"Perhaps another day. Farewell."~ */ EXIT
  IF ~  GlobalGT("Regret","GLOBAL",0)
~ THEN REPLY #26296 /* ~"Perhaps another day. Farewell."~ */ GOTO 51
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY #26212 /* ~There is the screaming of metal on metal as the giant turns to face you. You suddenly realize the golem is built into the siege tower itself; girders, pipes, and huge bracers run through its lower torso and into the walls, and the bottom portion of its body makes up the forge itself. ~ */
  IF ~~ THEN REPLY #26297 /* ~"What *are* you?"~ */ GOTO 4
  IF ~~ THEN REPLY #26298 /* ~"Never mind... I'm definitely in the wrong place. Sorry to disturb you."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #26213 /* ~I AM IRON GIVEN PURPOSE.~ */
  IF ~  Global("Coaxmetal","GLOBAL",0)
~ THEN REPLY #26299 /* ~"What purpose?"~ */ DO ~SetGlobal("Coaxmetal","GLOBAL",1)
~ GOTO 5
  IF ~  GlobalGT("Coaxmetal","GLOBAL",0)
~ THEN REPLY #26300 /* ~"What was your purpose again?"~ */ GOTO 5
  IF ~  GlobalGT("Coaxmetal","GLOBAL",0)
~ THEN REPLY #26301 /* ~"Yes, you'd mentioned that before. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #26302 /* ~"I... see. That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 4.0 4.1
  SAY #26214 /* ~I FORGE THE IMPLEMENTS BY WHICH THE MULTIVERSE WILL BE UNMADE.~ */
  IF ~  GlobalLT("Coaxmetal","GLOBAL",2)
~ THEN REPLY #26303 /* ~"You mean forging weapons? That's your purpose?"~ */ DO ~SetGlobal("Coaxmetal","GLOBAL",2)
~ GOTO 6
  IF ~  GlobalGT("Coaxmetal","GLOBAL",1)
~ THEN REPLY #26304 /* ~"And you said before that your purpose is to forge weapons... right?"~ */ GOTO 6
  IF ~  GlobalGT("Coaxmetal","GLOBAL",1)
~ THEN REPLY #26305 /* ~"I see. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #26306 /* ~"I'll let you carry on with your work, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.4 5.0 5.1 9.0
  SAY #26215 /* ~METAL IS LIKE FLESH. BOTH CARRY POTENTIAL IN THEIR VEINS. WHEN TEMPERED WITH HEAT AND PRESSURE, THE POTENTIAL SURFACES. MY PURPOSE IS TO BRING FORTH THIS POTENTIAL. ALLOW IT EXPRESSION. ~ */
  IF ~~ THEN REPLY #26307 /* ~"Who do you make these weapons for?"~ */ GOTO 10
  IF ~~ THEN REPLY #26308 /* ~"Why do you do this?"~ */ GOTO 7
  IF ~  GlobalLT("Coaxmetal","GLOBAL",3)
~ THEN REPLY #26309 /* ~"Can you do anything with my weapons?"~ */ DO ~SetGlobal("Coaxmetal","GLOBAL",3)
~ GOTO 64
  IF ~  Global("Coaxmetal","GLOBAL",3)
~ THEN REPLY #26310 /* ~"Can you do anything with my weapons?"~ */ GOTO 64
  IF ~~ THEN REPLY #26311 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #26312 /* ~"I'll let you carry on with your work, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3 6.1
  SAY #26216 /* ~THE IRON OF MY BODY ONCE EXISTED ONLY AS MINOR EXPRESSIONS OF PAIN. BLADES. SPEARS. AXES. ARROWHEADS. RIVETS IN CATAPULTS. FROM THESE IMPLEMENTS OF WAR WAS I WROUGHT.~ */
  IF ~~ THEN REPLY #26313 /* ~"What happened?"~ */ GOTO 8
  IF ~~ THEN REPLY #26314 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #26315 /* ~"I see. That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #26217 /* ~THESE MINOR EXPRESSIONS OF PAIN WERE MELTED TO FORGE THIS BODY. MY POTENTIAL WAS ALLOWED TO SURFACE. NOW MY PURPOSE IS TO BRING OUT THE POTENTIAL IN OTHER METALS.~ */
  IF ~~ THEN REPLY #26316 /* ~"You said that someone melted those weapons and forged your body. Who?"~ */ GOTO 9
  IF ~~ THEN REPLY #26317 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #26318 /* ~"I see. That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #26218 /* ~ENTROPY RAISED ME FROM THE PLANAR BATTLEFIELDS. ~ */
  IF ~~ THEN REPLY #26319 /* ~"And you said your purpose now is to forge weapons?"~ */ GOTO 6
  IF ~~ THEN REPLY #26320 /* ~"I see... I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #26321 /* ~"Well, remind me to thank, uh, entropy when I see him again. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #26219 /* ~I FORGE THEM FOR THE SAKE OF ENTROPY. THEY ARE PAIN SEEKING EXPRESSION.~ */
  IF ~~ THEN REPLY #26322 /* ~"What does entropy need weapons for?"~ */ GOTO 11
  IF ~~ THEN REPLY #26323 /* ~"I see. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #26324 /* ~"Very interesting... that is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #26220 /* ~BEYOND THIS TOWER, ORDER RALLIES ITS LEGIONS. THE MULTIVERSE HEALS ITS WOUNDS. IN TIME, ITS STRENGTH MAY EQUAL ENTROPY.~ */
  IF ~~ THEN REPLY #26325 /* ~"The multiverse is your enemy? Why?"~ */ JOURNAL #26107 /* ~The golem within the siege tower claims that the multiverse itself is his enemy... and that is why he labors on the forge. He seeks to make weapons by which the multiverse may be unmade. ~ */ GOTO 12
  IF ~~ THEN REPLY #26326 /* ~"I see. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #26327 /* ~"Very interesting... that is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #26222 /* ~THE MULTIVERSE BREATHES. IT GROWS. IT STAGNATES. IT FORGES ITS CHAINS AROUND THE PLANES LINK BY LINK. IN TIME, EVEN ENTROPY MAY BE CHAINED.~ */
  IF ~~ THEN REPLY #26328 /* ~"And you're opposed to chaining entropy?"~ */ GOTO 13
  IF ~~ THEN REPLY #26329 /* ~"I see. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #26330 /* ~"Very interesting... that is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #26223 /* ~WHEN A THING SEALS ITSELF AGAINST ITS OWN DESTRUCTION, IT MERELY DIES A DIFFERENT DEATH.~ */
  IF ~~ THEN REPLY #26331 /* ~"So you're saying immortality is just a different kind of death?"~ */ GOTO 34
  IF ~~ THEN REPLY #26332 /* ~"What makes that death any worse than another?"~ */ GOTO 14
  IF ~~ THEN REPLY #26333 /* ~Truth: "Except the death you seem to offer is violent and senseless - without meaning." ~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Coaxmetal_2","GLOBALLaw",1)
~ GOTO 14
  IF ~~ THEN REPLY #26334 /* ~Truth: "True enough; so what made you take up entropy's cause?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Coaxmetal_2","GLOBALLaw",-1)
~ GOTO 14
  IF ~~ THEN REPLY #26335 /* ~"I see. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #26336 /* ~"Very interesting that is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.1 13.2 13.3
  SAY #26224 /* ~ALL THINGS HAVE A COMMON GROUND IN DECAY. WAR IS NECESSARY. DEATH IS NECESSARY. DECAY IS NECESSARY. ~ */
  IF ~~ THEN REPLY #26337 /* ~"And how much of this is too much?"~ */ GOTO 15
  IF ~~ THEN REPLY #26338 /* ~"These things may be necessary... within limits."~ */ GOTO 15
  IF ~~ THEN REPLY #26339 /* ~"These things are *never* necessary. To promote them and glorify the destruction they cause is wrong."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_1","GLOBALGood",1)
~ GOTO 15
  IF ~~ THEN REPLY #26341 /* ~"Agreed. Without these things, there is stagnation."~ */ GOTO 16
  IF ~~ THEN REPLY #26342 /* ~"I see. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #26343 /* ~"Very interesting... that is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 14.2
  SAY #26225 /* ~THERE ARE NO LIMITS. LIMITS ARE ONE OF THE LINKS IN THE CHAIN OF ORDER. LIMITS MUST BE SHATTERED. ~ */
  IF ~~ THEN REPLY #26344 /* ~"Even if death is the result?"~ */ GOTO 16
  IF ~~ THEN REPLY #26345 /* ~"I see. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #26346 /* ~"Very interesting... that is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.3 15.0
  SAY #26226 /* ~ALL MUST FALL UPON ENTROPY'S BLADE. THE TIME NEARS WHEN IT WILL BE NECESSARY TO BREACH THE WALLS OF CREATION. ORDER WILL BE PUT TO THE SWORD. ITS CHAINS WILL BE BROKEN. THE MULTIVERSE WILL BE UNMADE.~ */
  IF ~~ THEN REPLY #26347 /* ~"I... see. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #26348 /* ~"Sounds like it'll be a hell of a battle... perhaps I'll see you there. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.1
  SAY #26227 /* ~THIS TOWER IS A SIEGE ENGINE. IT EXISTS TO BREACH THE WALLS BETWEEN PLANES. ~ */
  IF ~~ THEN REPLY #26349 /* ~"Breach planes? How?"~ */ JOURNAL #26106 /* ~Apparently, the Siege Tower has the power to breach the walls between planes, acting as a real siege tower would, only in an extra-dimensional sense. An invading legion readies itself on one side of the planar wall, waits for the siege tower to lower its bridge and pierce a hole in the target plane, then they stream into the new plane through the siege tower itself. The siege tower becomes a crude door by which a plane may be victimized by an invading army. I wonder what damage the tower is doing to the planes themselves by punching all these holes in the multiverse...~ */ GOTO 20
  IF ~~ THEN REPLY #26350 /* ~"If this siege tower can travel the planes, why do you remain here?"~ */ GOTO 18
  IF ~~ THEN REPLY #26351 /* ~"I see. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #26353 /* ~"Very interesting... that is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY #26228 /* ~THE TOWER IS TRAPPED IN THIS CITY. THIS CITY IS A CAGE THAT IT CANNOT BREACH.~ */
  IF ~~ THEN REPLY #26354 /* ~"How did the siege tower get in the city in the first place?"~ */ GOTO 19
  IF ~~ THEN REPLY #26355 /* ~"I see. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #26356 /* ~"Very interesting... that is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #26229 /* ~AT ONE TIME THE TOWER LAID SIEGE TO THE PLANES. HOW I WAS BROUGHT HERE IS NOT KNOWN TO ME. HOW I MAY ESCAPE IS NOT KNOWN TO ME.~ */
  IF ~~ THEN REPLY #26357 /* ~"You said the tower can breach planes? How?"~ */ JOURNAL #26106 /* ~Apparently, the Siege Tower has the power to breach the walls between planes, acting as a real siege tower would, only in an extra-dimensional sense. An invading legion readies itself on one side of the planar wall, waits for the siege tower to lower its bridge and pierce a hole in the target plane, then they stream into the new plane through the siege tower itself. The siege tower becomes a crude door by which a plane may be victimized by an invading army. I wonder what damage the tower is doing to the planes themselves by punching all these holes in the multiverse...~ */ GOTO 20
  IF ~~ THEN REPLY #26358 /* ~"I see. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #26359 /* ~"I'm sorry to hear that; I don't think I can help you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0 19.0
  SAY #26230 /* ~THE TOWER ANCHORS ITSELF UPON A PLANE. A WOUND IS TORN IN THE MULTIVERSE WHEN THE BRIDGE OF THE TOWER OPENS. LEGIONS MAY PASS FROM ONE PLANE TO THE OTHER THROUGH THE TOWER. WHEN THE PLANE HAS SERVED ENTROPY'S PURPOSE, THE TOWER ANCHORS ITSELF AGAIN.~ */
  IF ~~ THEN REPLY #26366 /* ~"What happened to the legions that have used the tower?"~ */ GOTO 21
  IF ~~ THEN REPLY #26367 /* ~"I see. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #26368 /* ~"Very interesting... that is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #26231 /* ~ENTROPY HAS UNMADE THEM.~ */
  IF ~~ THEN REPLY #26369 /* ~"And what happened to the planes the siege tower invaded?"~ */ GOTO 22
  IF ~~ THEN REPLY #26370 /* ~"I see. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #26371 /* ~"Very interesting... that is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #26232 /* ~ENTROPY HAS UNMADE THEM.~ */
  IF ~~ THEN REPLY #26372 /* ~"I... see. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #26373 /* ~"Very interesting... that is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.6
  SAY #26233 /* ~IT IS THE WAR BY WHICH THE PLANES WILL BE UNMADE.~ */
  IF ~~ THEN REPLY #26374 /* ~"How long has it gone on?"~ */ GOTO 24
  IF ~~ THEN REPLY #26375 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #26376 /* ~"I see. That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #26234 /* ~THE LIFETIMES OF MANY METALS.~ */
  IF ~~ THEN REPLY #26377 /* ~"Did you ever serve in it?"~ */ GOTO 25
  IF ~~ THEN REPLY #26378 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #26379 /* ~"I see. That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #26235 /* ~YES. IT WAS ON THIS FORGE THAT THE SCREAMING PROJECTILES THAT TORE THE SMOKING SKIES OF AVERNUS WERE MADE. WEAPONS SO SHARP THE WIND ITSELF KNEW AGONY.~ */
  IF ~~ THEN REPLY #26380 /* ~"Oh... uh, I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #26381 /* ~"I see. That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 2.7
  SAY #26236 /* ~THE NIGHT HAG SOUGHT TO SUNDER THIS CITY. HER GREATEST WORKS WERE THOSE OF UNMAKING. SHE WALKED THE PATH OF ENTROPY. ~ */
  IF ~  Global("Ravel","GLOBAL",0)
~ THEN REPLY #26382 /* ~"Do you know what happened to her?"~ */ JOURNAL #26104 /* ~The golem said that Ravel sought to sunder Sigil, and that 'order' punished her by placing her in a cage. He doesn't know where this cage is, though.~ */ GOTO 27
  IF ~~ THEN REPLY #26383 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #26384 /* ~"I see. That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #26237 /* ~ORDER SET CHAINS ABOUT HER. SHE WAS CAST WITHIN A CAGE. ~ */
  IF ~~ THEN REPLY #26385 /* ~"Do you know where this cage is?"~ */ GOTO 28
  IF ~~ THEN REPLY #26386 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #26387 /* ~"I see. That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #26238 /* ~HER PRISON IS UNKNOWN TO ME. ~ */
  IF ~~ THEN REPLY #26388 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #26389 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 2.8
  SAY #26239 /* ~IT IS A PLACE OF SHADOWS. A FORTRESS NOT EVEN THIS TOWER CAN BREACH. ~ */
  IF ~~ THEN REPLY #26390 /* ~"Do you know anything more about it?"~ */ JOURNAL #26096 /* ~The golem knew of the Fortress of Regrets... he said it had walls that not even the siege tower could breach. He said it was a memorial that had forgotten itself and now slowly dies on the 'Negative Material Plane.'~ */ GOTO 30
  IF ~~ THEN REPLY #26391 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #26392 /* ~"I see. That is all I wished to know. Farewell."~ */ GOTO 51
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #26240 /* ~IT IS A MEMORIAL THAT HAS FORGOTTEN ITSELF. IT NOW DECAYS IN DARKNESS, SLOWLY DYING AMONG THE SKIES OF THE NEGATIVE MATERIAL PLANE.~ */
  IF ~~ THEN REPLY #26393 /* ~"Do you know how to reach it?"~ */ GOTO 31
  IF ~~ THEN REPLY #26394 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #26395 /* ~"I see. That is all I wished to know. Farewell."~ */ GOTO 51
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #26241 /* ~NO. ~ */
  IF ~~ THEN REPLY #26396 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #26397 /* ~"I see. That is all I wished to know. Farewell."~ */ GOTO 51
END

IF ~~ THEN BEGIN 32 // from: 2.9
  SAY #26242 /* ~I HAVE SUCH AN ITEM. THE DREAMBUILDER CAME TO ME AN AGE AGO. HE PROMISED ME THAT MY DURANCE IN THE PRISON OF THIS CITY WOULD BE NEAR AN END WHEN THE CAGE LEFT MY POSSESSION. ~ */
  IF ~~ THEN REPLY #26398 /* ~"I... see. Can I have it?"~ */ JOURNAL #26103 /* ~I obtained the dreamcage from the golem. I'll take it back to Xander and see if he can make use of it.~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #26243 /* ~YES. TAKE THIS CAGE AND LAY WASTE TO THOSE WHO CREATE SUCH CONFINES.~ */
  IF ~~ THEN REPLY #26399 /* ~"Before I go, I had other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #26400 /* ~"Thank you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 13.0
  SAY #26244 /* ~IMMORTALITY IS ONLY A WORD. ALL THAT EXISTS CAN DIE.~ */
  IF ~~ THEN REPLY #26401 /* ~"You're saying you could forge a weapon to kill an immortal?"~ */ GOTO 35
  IF ~~ THEN REPLY #26402 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #26403 /* ~"I... see. That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #26245 /* ~EVERY LIVING THING HAS A WEAPON AGAINST WHICH IT HAS NO DEFENSE. TIME. DISEASE. IRON. GUILT. ~ */
  IF ~~ THEN REPLY #26404 /* ~"How do you know what weapon to use?"~ */ GOTO 36
  IF ~~ THEN REPLY #26405 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #26406 /* ~"I see. That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #26246 /* ~ONE MUST KNOW THE ENEMY TO FORGE SUCH A WEAPON.~ */
  IF ~~ THEN REPLY #26407 /* ~"And how do I do that?"~ */ GOTO 37
  IF ~~ THEN REPLY #26408 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #26409 /* ~"I see. That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #26247 /* ~START WITH A FRAGMENT OF THE ENEMY. A DROP OF BLOOD. A CRYSTALLIZED THOUGHT. ONE OF ITS HOPES. ALL OF THESE THINGS TELL THE WAY IT CAN DIE.~ */
  IF ~~ THEN REPLY #26410 /* ~"What if your enemy strikes from a distance, from shadows, and never shows himself?"~ */ GOTO 38
  IF ~  Global("Coaxmetal_Weapon","GLOBAL",0)
CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #26411 /* ~"Hmmmm. Could you forge a weapon that would kill me?"~ */ GOTO 45
  IF ~  Global("Coaxmetal_Weapon","GLOBAL",0)
CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #26412 /* ~"Hmmmm. Could you forge a weapon that would kill me?"~ */ GOTO 45
  IF ~~ THEN REPLY #26413 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #26414 /* ~"I see. That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #26248 /* ~THEN THAT IS THE FRAGMENT OF THE ENEMY YOU MUST USE. ~ */
  IF ~~ THEN REPLY #26416 /* ~"How?"~ */ GOTO 39
  IF ~~ THEN REPLY #26417 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #26418 /* ~"I see. That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #26249 /* ~THE ACTIONS OF YOUR ENEMY HAVE TOLD YOU MUCH. YOUR ENEMY DOES NOT WISH TO ENGAGE YOU DIRECTLY. THAT IS A WEAKNESS. ~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #26419 /* ~"Or... for some reason, it *cannot* engage me directly."~ */ DO ~SetGlobal("Know_Transcendent_Weakness","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #26420 /* ~"How do I exploit that?"~ */ GOTO 42
  IF ~~ THEN REPLY #26421 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #26422 /* ~"I see. That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #26250 /* ~THAT IS AN EQUAL POSSIBILITY. EITHER POSSIBILITY REVEALS WEAKNESS.~ */
  IF ~~ THEN REPLY #26423 /* ~"How do I exploit that?"~ */ GOTO 41
  IF ~~ THEN REPLY #26425 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #26426 /* ~"I see. That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #26251 /* ~THE ACTIONS OF YOUR ENEMY HAVE TOLD YOU IT DOES NOT WISH TO ENGAGE YOU DIRECTLY. THAT IS A WEAKNESS.~ */
  IF ~~ THEN REPLY #26427 /* ~"How do I exploit that?"~ */ JOURNAL #26102 /* ~The golem gave me advice on an enemy that strikes from the shadows... he said that the fact the enemy does not engage me directly is a weakness that I should exploit. He suggested that I do not fight the enemy on its terms, but instead, take the battle to the enemy.~ */ GOTO 43
  IF ~~ THEN REPLY #26429 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #26430 /* ~"I see. That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 39.1
  SAY #26252 /* ~CONFRONT YOUR ENEMY DIRECTLY. TAKE THE BATTLE TO THE ENEMY.~ */
  IF ~  Global("Coaxmetal_Weapon","GLOBAL",0)
~ THEN REPLY #26431 /* ~"You said that immortality was just a word... that all that lives can die. Could you make a weapon that could kill me?"~ */ GOTO 45
  IF ~~ THEN REPLY #26432 /* ~"Very well. I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #26433 /* ~"I see. That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.0
  SAY #26253 /* ~IF THE ENEMY DOES NOT WISH TO CONFRONT YOU DIRECTLY, DENY ITS WISH. TAKE THE BATTLE TO THE ENEMY.~ */
  IF ~~ THEN REPLY #26435 /* ~"And if the reason it can't attack me directly is because it has no choice?"~ */ JOURNAL #26095 /* ~The golem gave me advice on an enemy that strikes from the shadows... he said that the fact the enemy does not engage me directly or cannot engage me directly is a weakness that I should exploit. He suggested that I do not fight the enemy on its terms, but instead, take the battle to the enemy. If there is some reason my enemy cannot fight me directly, he said I should find the reason and exploit it.~ */ GOTO 44
  IF ~~ THEN REPLY #26436 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #26437 /* ~"I see. That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #26254 /* ~IF IT IS NOT ALLOWED TO CONFRONT YOU DIRECTLY, FIND THE REASON. THE REASON WILL REVEAL A WEAKNESS.~ */
  IF ~  Global("Coaxmetal_Weapon","GLOBAL",0)
~ THEN REPLY #26438 /* ~"You said immortality was just a word... that all that lives can die. Could you make a weapon that could kill me?"~ */ GOTO 45
  IF ~~ THEN REPLY #26439 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #26440 /* ~"I see. That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 37.1 37.2 42.0 44.0
  SAY #26255 /* ~YES. ~ */
  IF ~~ THEN REPLY #26441 /* ~"Really? How?"~ */ GOTO 46
  IF ~~ THEN REPLY #26442 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #26443 /* ~"I see. That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #26256 /* ~I WOULD NEED A DROP OF YOUR BLOOD. THAT IS ALL. ~ */
  IF ~~ THEN REPLY #26444 /* ~"Very well..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Coaxmetal_Weapon","GLOBAL",1)
GiveItemCreate("BladeIm",Protagonist,1,0,0)
AddexperienceParty(10000)
~ GOTO 47
  IF ~~ THEN REPLY #26445 /* ~"Perhaps another time. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #26446 /* ~"I see. That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #26257 /* ~THE TOOL OF YOUR DESTRUCTION HAS BEEN FORGED AND EDUCATED. IT IS NOT ENOUGH. ~ */
  IF ~~ THEN REPLY #26447 /* ~"What do you mean?"~ */ JOURNAL #26088 /* ~The iron golem forged a weapon that he said could kill me... but that it had to be used in the proper place, within a shell where I was cut off from the planes. I asked him where I could find such a place, and he said he did not know.~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #26258 /* ~THE MAGICKS THAT KEEP YOUR HEART BEATING AND MEND YOUR FLESH ARE STRONG. YOU MUST SINK THE BLADE INTO YOUR BODY ONLY WITHIN A SHELL WHERE YOU ARE CUT OFF FROM THE PLANES.~ */
  IF ~~ THEN REPLY #26448 /* ~"Why?"~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #26259 /* ~THE REASON IS NOT KNOWN TO ME. YET BOTH THE WEAPON AND THE PLACE ARE NECESSARY FOR YOUR DESTRUCTION.~ */
  IF ~~ THEN REPLY #26450 /* ~"Where would I find such a shell that separated me from the planes?"~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #26260 /* ~THAT IS NOT KNOWN TO ME.~ */
  IF ~~ THEN REPLY #26454 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #26455 /* ~"I'll have to go find such a place on my own, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 2.11 29.2 30.2 31.1 65.3
  SAY #26261 /* ~HOLD. BEFORE YOU DEPART, THERE IS SOMETHING YOU MUST DO.~ */
  IF ~~ THEN REPLY #26456 /* ~"What?"~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #26262 /* ~SUNDER THIS PRISON. FREE ME. MY PURPOSE CANNOT BE FULFILLED IN THIS CAGE.~ */
  IF ~~ THEN REPLY #26459 /* ~"I cannot do that."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_2","GLOBALGood",2)
~ GOTO 53
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #26460 /* ~"How could *I* free you?"~ */ GOTO 58
  IF ~  !PartyHasItem("Cube")
~ THEN REPLY #26457 /* ~"How could *I* free you?"~ */ GOTO 60
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #26263 /* ~EXPLAIN.~ */
  IF ~~ THEN REPLY #26458 /* ~"If you escaped this city, you would only bring war and destruction to the rest of the planes. Countless planars would die. I could not allow such a thing."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_2","GLOBALGood",2)
~ GOTO 54
  IF ~~ THEN REPLY #26461 /* ~"Your purpose is here, golem. Your purpose is to serve me. Provide me with weapons and speak to me no more of your 'freedom.'"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_3","GLOBALGood",-2)
~ GOTO 55
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #26264 /* ~THAT IS WHY I MUST BE FREED. THE MULTIVERSE IS RALLYING ITS LEGIONS. IT IS HEALING ITS WOUNDS. IN TIME, IT MAY GROW TO BE THE EQUAL OF ENTROPY. THIS MUST NOT BE ALLOWED TO COME TO PASS.~ */
  IF ~~ THEN REPLY #26462 /* ~"I disagree."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Coaxmetal_3","GLOBALLaw",2)
~ GOTO 55
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #26463 /* ~"Hmmm. I see your point... how can I free you?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Coaxmetal_3","GLOBALLaw",-2)
~ GOTO 58
  IF ~  !PartyHasItem("Cube")
~ THEN REPLY #26464 /* ~"Hmmm. I see your point... how can I free you?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Coaxmetal_3","GLOBALLaw",-2)
~ GOTO 60
END

IF ~~ THEN BEGIN 55 // from: 53.1 54.0
  SAY #26265 /* ~LISTEN. DO YOU HEAR IT?~ */
  IF ~~ THEN REPLY #26465 /* ~"What?"~ */ GOTO 56
  IF ~  Global("Good_Coaxmetal_2","GLOBAL",1)
~ THEN REPLY #26466 /* ~"There is nothing more to be said. I will not free you; the planes do not need the chaos and suffering you will bring. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Coaxmetal_1","GLOBALLaw",3)
IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_3","GLOBALGood",3)
~ JOURNAL #26093 /* ~As I left the siege tower for the Fortress, the golem asked that I help him break free of his prison and continue his entropic crusade across the planes. I said I would not. He has cast me from the siege tower, and I am never allowed to set foot in it again. It was a small price to pay so that the planes would not suffer. ~ */ GOTO 57
  IF ~  Global("Evil_Coaxmetal_3","GLOBAL",1)
~ THEN REPLY #26467 /* ~"There is nothing more to be said. Your purpose is here, golem, and you will continue to serve me. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_4","GLOBALGood",-3)
~ JOURNAL #26092 /* ~As I left the siege tower for the Fortress, the golem asked that I help him break free of his prison and continue his entropic crusade across the planes. I said I would not; his purpose was to serve ME, not go warring across the planes on some foolish ideal. He has cast me from the siege tower, and I am never allowed to set foot in it again. ~ */ GOTO 57
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #26266 /* ~THE SOUND OF NEGLECTED METAL. RUST. WEAPONS WITHOUT EXPRESSION. UNBLOODED ON PLANAR BATTLEGROUNDS. THEY SUFFER. FREE ME. FREE THEM.~ */
  IF ~  Global("Good_Coaxmetal_2","GLOBAL",1)
~ THEN REPLY #26468 /* ~"I cannot allow you to be free. The planes do not need any more chaos and bloodletting."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Coaxmetal_1","GLOBALLaw",3)
IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_3","GLOBALGood",3)
~ JOURNAL #26090 /* ~As I left the siege tower for the Fortress, the golem asked that I help him break free of his prison and continue his entropic crusade across the planes. I said I would not. He has cast me from the siege tower, and I am never allowed to set foot in it again. It was a small price to pay so that the planes would not suffer. ~ */ GOTO 57
  IF ~  Global("Evil_Coaxmetal_3","GLOBAL",1)
~ THEN REPLY #26469 /* ~"There is nothing more to be said. Your purpose is here, golem, and you will continue to serve me."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_4","GLOBALGood",-3)
~ JOURNAL #26092 /* ~As I left the siege tower for the Fortress, the golem asked that I help him break free of his prison and continue his entropic crusade across the planes. I said I would not; his purpose was to serve ME, not go warring across the planes on some foolish ideal. He has cast me from the siege tower, and I am never allowed to set foot in it again. ~ */ GOTO 57
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #26470 /* ~"How could I free them?"~ */ GOTO 58
  IF ~  !PartyHasItem("Cube")
~ THEN REPLY #26471 /* ~"How could I free them?"~ */ GOTO 60
END

IF ~~ THEN BEGIN 57 // from: 55.1 55.2 56.0 56.1 59.1 59.2 59.3
  SAY #26267 /* ~ORDER HAS SET ITS CHAINS AROUND YOU. YOU ARE MY ENEMY AND THE ENEMY OF ALL THAT DIES. YOU SHALL BE BARRED FROM THIS TOWER UNTIL ETERNITY ENDS.~ */
  IF ~~ THEN REPLY #26472 /* ~"If that is what must be, then that is what must be. Farewell."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
TeleportParty("AR0500",[3530.1654],0)
FadeFromColor([20.0],0)
SetGlobal("Coaxmetal","GLOBAL",5)
AddexperienceParty(12000)
~ EXIT
END

IF ~~ THEN BEGIN 58 // from: 52.1 54.1 56.2
  SAY #26268 /* ~GIVE ME THE PLANAR CUBE YOU CARRY. IT CAN FREE ME FROM THIS PLACE. ~ */
  IF ~~ THEN REPLY #26473 /* ~"All right, here you are."~ */ DO ~DestroyPartyItem("Cube",TRUE)
FadeToColor([20.0],0)
Wait(3)
TeleportParty("AR0500",[3530.1654],0)
FadeFromColor([20.0],0)
GiveItemCreate("EDag",Protagonist,1,0,0)
AddexperienceParty(12000)
IncrementGlobalOnceEx("GLOBALChaotic_Coaxmetal_1","GLOBALLaw",-5)
IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_1","GLOBALGood",-5)
SetGlobal("Coaxmetal","GLOBAL",5)
~ JOURNAL #26091 /* ~I surrendered the Modron Cube to the golem, then there was darkness. I don't know what happened, but the siege tower is still there. I have a strange feeling that I will never be able to enter it again. Yet he seems to have left me with a strange weapon...~ */ EXIT
  IF ~~ THEN REPLY #26474 /* ~"I can't give that up."~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 1.1 58.1 60.1 61.1 62.1 63.0
  SAY #26269 /* ~IT IS THE DOOR THAT WILL ALLOW THIS TOWER TO LEAVE THIS PLACE. GIVE TO ME THE PLANAR CUBE.~ */
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #26475 /* ~"All right, here you are."~ */ DO ~DestroyPartyItem("Cube",TRUE)
GiveItemCreate("EDag",Protagonist,1,0,0)
FadeToColor([20.0],0)
Wait(3)
TeleportParty("AR0500",[3530.1654],0)
FadeFromColor([20.0],0)
AddexperienceParty(12000)
IncrementGlobalOnceEx("GLOBALChaotic_Coaxmetal_1","GLOBALLaw",-5)
IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_1","GLOBALGood",-5)
SetGlobal("Coaxmetal","GLOBAL",5)
~ JOURNAL #26094 /* ~I surrendered the Modron Cube to the golem, then there was darkness. I don't know what happened, but the siege tower is still there. I have a strange feeling that I will never be able to enter it again. Yet he seems to have left me with a strange weapon...~ */ EXIT
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #26476 /* ~"Be that as it may, I can't give the cube up. It's too precious to me."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_2","GLOBALGood",-2)
~ GOTO 57
  IF ~  !PartyHasItem("Cube")
~ THEN REPLY #26477 /* ~"I wouldn't give up such an item to you. It sounds too powerful to be made a gift... if I find it, I'll keep it for myself."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_2","GLOBALGood",-2)
~ GOTO 57
  IF ~~ THEN REPLY #26478 /* ~"I'm not giving it to you. I cannot allow you to be free. The planes do not need any more chaos and bloodletting."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Coaxmetal_1","GLOBALLaw",3)
IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_3","GLOBALGood",3)
~ GOTO 57
END

IF ~~ THEN BEGIN 60 // from: 52.2 54.2 56.3
  SAY #26270 /* ~THERE IS A PLANAR CUBE. IT CAN FREE ME FROM THIS PLACE. ~ */
  IF ~~ THEN REPLY #26479 /* ~"But... I do not have such a cube."~ */ GOTO 61
  IF ~  Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #26480 /* ~"I know of such a cube. But I will not give it to you."~ */ GOTO 59
END

IF ~~ THEN BEGIN 61 // from: 60.0 63.1
  SAY #26271 /* ~THEN YOU WILL FIND THE CUBE. YOU WILL BRING IT TO ME.~ */
  IF ~~ THEN REPLY #26482 /* ~"Where would I find such a thing?"~ */ GOTO 62
  IF ~  Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #26483 /* ~"I know of such a cube. But I will not give it to you."~ */ GOTO 59
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #26272 /* ~ITS LOCATION IS NOT KNOWN TO ME. FIND IT. BRING IT TO ME.~ */
  IF ~~ THEN REPLY #26484 /* ~"Very well... I will find the cube and bring it to you."~ */ DO ~SetGlobal("Coaxmetal","GLOBAL",4)
~ JOURNAL #26097 /* ~The golem asked me to bring to him a planar cube to help him escape the siege tower. He refused to listen to any more of my questions and requests until I bring it to him. ~ */ EXIT
  IF ~  Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #26485 /* ~"I know of such a cube. But I will not give it to you."~ */ GOTO 59
END

IF ~~ THEN BEGIN 63 // from: 1.2
  SAY #26273 /* ~WHERE IS THE PLANAR CUBE?~ */
  IF ~~ THEN REPLY #26486 /* ~"I do not have it. If I had it, I would not give it to you."~ */ GOTO 59
  IF ~~ THEN REPLY #26487 /* ~"I don't have the cube yet, but I wanted to ask you some questions-"~ */ GOTO 61
  IF ~~ THEN REPLY #26488 /* ~"I haven't found it yet. I'll return when I have."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 2.5 6.2 6.3
  SAY #26274 /* ~SHOW ME WHAT YOU HAVE BROUGHT. I WILL STUDY ITS POTENTIAL AND SEE IF ITS PAIN CAN BE GIVEN EXPRESSION.~ */
  IF ~~ THEN REPLY #26489 /* ~"Very well..."~ */ DO ~StartStore("Coax",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 65 // from:
  SAY #26276 /* ~IT IS DONE.~ */
  IF ~~ THEN REPLY #26490 /* ~"Can I take a look at what other weapons you have?"~ */ DO ~StartStore("Coax",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #26491 /* ~"All right. I had another question..."~ */ GOTO 2
  IF ~  Global("Regret","GLOBAL",0)
~ THEN REPLY #26492 /* ~"I see. That is all I wanted. Farewell."~ */ EXIT
  IF ~  GlobalGT("Regret","GLOBAL",0)
~ THEN REPLY #26493 /* ~"I see. That is all I wanted. Farewell."~ */ GOTO 51
END
