// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARROW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARROW~

IF ~  Global("Marrow","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2792 /* ~You can smell the reek of dung and rotting meat on this man, even from afar. Though obviously weak and decrepit, his long, thin fingers and sunken eyes give him a sinister look as he scuttles through the garbage around him. The way he drools and rolls his eyes makes you wonder if he's mad.~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #17228 /* ~"Greetings..."~ */ DO ~SetGlobal("Marrow","GLOBAL",1)
~ GOTO 1
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17229 /* ~"Greetings..."~ */ EXTERN ~DANNAH~ 102
  IF ~~ THEN REPLY #17230 /* ~Leave him be.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2793 /* ~He tries to focus on you, but his gaze wanders. His eyes are set deeply into hollow sockets, and his skin is terribly pale and diseased, covered with rashes and yellowed patches that look ready to peel from his body at any moment. The stench emanating from him is terrible. As you open your mouth to speak, he licks his lips and swallows. "Yoooo ded-err?"~ */
  IF ~~ THEN REPLY #17231 /* ~"What did you say?"~ */ GOTO 2
  IF ~~ THEN REPLY #17232 /* ~"Are you all right?"~ */ GOTO 2
  IF ~~ THEN REPLY #17233 /* ~Leave him.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #17170 /* ~"Yoooo..." He licks his lips again, and his long, spindly fingers pick at his skin as he stares at you. "Yooo ded-rrr?" He glances to your left, then his eyes dart back to you. "Ded? Ded? Hhun-greee." He reaches out to touch you, licking his scabrous lips.~ */
  IF ~  HPGT(Protagonist,1)
~ THEN REPLY #17234 /* ~Let him touch you.~ */ DO ~Damage(Protagonist,LOWER,1)
~ GOTO 4
  IF ~  HPLT(Protagonist,2)
~ THEN REPLY #17235 /* ~Let him touch you.~ */ DO ~Damage(Protagonist,LOWER,1)
~ GOTO 3
  IF ~~ THEN REPLY #17236 /* ~Don't let him touch you.~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.1 21.1
  SAY #17171 /* ~His fingers scrabble spider-like on your arm, as if looking for a piece to tear off. He licks his split lips again, and you watch yellowish drool drip from them. With a raspy moan, his fingers suddenly dig into the skin on your arm and pull off a bit. The wound is small, but in your present condition it proves fatal... you collapse, dead.~ */
  IF ~~ THEN REPLY #17237 /* ~Done.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 21.0
  SAY #17172 /* ~His fingers scrabble spider-like on your arm, as if looking for a piece to tear off. He licks his split lips again, and you watch yellowish drool drip from them. With a raspy moan, his fingers suddenly dig into the skin on your arm and pull off a bit.~ */
  IF ~~ THEN REPLY #17239 /* ~Step back.~ */ GOTO 6
  IF ~~ THEN REPLY #339 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 21.2
  SAY #17173 /* ~His hands claw the empty air where you were, and he gives a low whine, like a pained dog. "H-hhunn-greee."~ */
  IF ~~ THEN REPLY #17242 /* ~Step back.~ */ GOTO 7
  IF ~~ THEN REPLY #17243 /* ~Leave him.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0
  SAY #17174 /* ~You watch, and feel your stomach churn as he takes the bit of flesh and shoves it into his mouth. He chews it slowly, then swallows. "Yooo ded?"~ */
  IF ~~ THEN REPLY #17245 /* ~"No, I'm not dead."~ */ GOTO 8
  IF ~~ THEN REPLY #17250 /* ~"No, but you'll be in moments..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #17248 /* ~Leave him.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #17176 /* ~His hand suddenly shoots out to catch a fat, white grub that was squirming in a nearby heap of offal. You feel your stomach churn as he takes the maggot and shoves it into his mouth. He chews it slowly, then swallows. "Yooo ded?"~ */
  IF ~~ THEN REPLY #17249 /* ~"No, I'm not dead."~ */ GOTO 9
  IF ~~ THEN REPLY #17251 /* ~Leave him.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #17177 /* ~"Yooo taaaaste ded." He scratches himself beneath his robe, and you suddenly notice that he has a finger hanging from his neck on a cord. It looks like there is a ring on it. "Still h-hun-gree."~ */
  IF ~~ THEN REPLY #17252 /* ~"What do you usually eat?"~ */ GOTO 10
  IF ~~ THEN REPLY #17253 /* ~"What is that finger bone?"~ */ GOTO 11
  IF ~~ THEN REPLY #17255 /* ~Leave him.~ */ GOTO 22
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #17178 /* ~"Yooo looook ded." He scratches himself beneath his robe, and you suddenly notice that he has a finger hanging from his neck on a cord. It looks like there is a ring on it. "Still h-hun-gree."~ */
  IF ~~ THEN REPLY #17257 /* ~"What do you usually eat?"~ */ GOTO 10
  IF ~~ THEN REPLY #17258 /* ~"What is that finger bone?"~ */ GOTO 11
  IF ~~ THEN REPLY #17259 /* ~Leave him.~ */ GOTO 22
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #17179 /* ~He makes a snuffling noise, like a pig. "Ded."~ */
  IF ~~ THEN REPLY #17260 /* ~"What is that finger bone?"~ */ GOTO 11
  IF ~~ THEN REPLY #17261 /* ~Leave him.~ */ GOTO 22
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.1 10.0
  SAY #17180 /* ~He looks down, his plague-ridden features twisting into a ghastly, snaggle-toothed parody of a grin. "Snnnak." He looks ready to chew on it.~ */
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17262 /* ~Stop him.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 13
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17264 /* ~Stop him.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 12
  IF ~~ THEN REPLY #17266 /* ~"Don't eat that. Have a bite off me, instead. I'm more fresh."~ */ GOTO 14
  IF ~~ THEN REPLY #17269 /* ~Lie: "Don't eat that. I'll bring you a whole body to eat rather than that."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marrow_2","GLOBALLaw",-1)
~ GOTO 20
  IF ~~ THEN REPLY #17271 /* ~Leave him.~ */ GOTO 22
END

IF ~~ THEN BEGIN 12 // from: 11.1 13.1
  SAY #17181 /* ~You grab his hand, and he starts flailing against you. As he does, he bites a large chunk out of your arm, and you are forced to let him go... the wound is not horrible, but in your present condition it's fatal. You collapse, dead.~ */
  IF ~~ THEN REPLY #17273 /* ~Fall into darkness...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0 13.0
  SAY #17182 /* ~You grab his hand, and he starts flailing against you. As he does, he bites a large chunk out of your arm, and you are forced to let him go... not because of the pain, but because you might snap him in two should you continue to wrestle. He chews on the chunk of your flesh for a moment, then looks back at the finger bone.~ */
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17274 /* ~Stop him from eating the finger bone.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 13
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17276 /* ~Stop him from eating the finger bone.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 12
  IF ~~ THEN REPLY #17277 /* ~"Don't eat that. Have a bite off me, instead. I'm more fresh."~ */ GOTO 14
  IF ~~ THEN REPLY #17278 /* ~Lie: "Don't eat that. I'll bring you a whole body to eat rather than that."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marrow_2","GLOBALLaw",-1)
~ GOTO 20
  IF ~~ THEN REPLY #17280 /* ~Leave him.~ */ GOTO 22
END

IF ~~ THEN BEGIN 14 // from: 11.2 13.2 31.1 32.1
  SAY #17183 /* ~He smiles and reaches for your outstretched hand.~ */
  IF ~~ THEN REPLY #17281 /* ~"Give me the finger bone first, 'marrow-friend.'"~ */ DO ~GiveItemCreate("Finger",Protagonist,1,0,0)
SetGlobal("Marrow","GLOBAL",2)
~ GOTO 17
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17282 /* ~Let him bite you.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 16
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17283 /* ~Let him bite you.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 15
  IF ~~ THEN REPLY #17285 /* ~Leave him.~ */ GOTO 22
END

IF ~~ THEN BEGIN 15 // from: 14.2 17.1
  SAY #17184 /* ~His teeth sink into the meat of your forearm and pull a chunk away with a single wrench of his neck. You realize too late that your body was in no condition to receive further punishment, and you collapse to the ground, dead.~ */
  IF ~~ THEN REPLY #17286 /* ~Fall into darkness...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1 17.0
  SAY #17185 /* ~His teeth sink into the meat of your forearm and pull a chunk away with a single wrench of his neck. The pain is excruciating, but Marrow-Friend sits on his haunches as if nothing had happened, chewing noisily at the mouthful of meat he pulled away.~ */
  IF ~  !Global("Marrow","GLOBAL",2)
~ THEN REPLY #17287 /* ~"Now... give me your finger."~ */ GOTO 19
  IF ~  Global("Marrow","GLOBAL",2)
~ THEN REPLY #17288 /* ~"Eh... thanks. Farewell."~ */ EXIT
  IF ~  !Global("Marrow","GLOBAL",2)
~ THEN REPLY #17289 /* ~Leave him.~ */ GOTO 22
  IF ~  Global("Marrow","GLOBAL",2)
~ THEN REPLY #17290 /* ~Leave him.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.0 19.0
  SAY #17186 /* ~He nods greedily and lets you take the finger bone. ~ */
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17291 /* ~Let him bite you.~ */ DO ~Damage(Protagonist,LOWER,3)
IncrementGlobalOnceEx("GLOBALLawful_Marrow_1","GLOBALLaw",1)
~ GOTO 16
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17292 /* ~Let him bite you.~ */ DO ~Damage(Protagonist,LOWER,3)
IncrementGlobalOnceEx("GLOBALLawful_Marrow_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #17293 /* ~Don't let him bite you, leave.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marrow_1","GLOBALGood",-1)
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.2 29.2
  SAY #17187 /* ~As you step out of his reach he begins whines pitifully, like a dog kicked away by its master...~ */
  IF ~~ THEN REPLY #17294 /* ~Leave.~ */ DO ~SetGlobal("Marrow_Follow","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.0
  SAY #17188 /* ~He clutches the finger bone to his chest, looking up at you pitifully and shaking his head. "N-nooo. Hun-greee!"~ */
  IF ~~ THEN REPLY #17295 /* ~"I'll let you have another of mine, if you'll give me the finger bone."~ */ DO ~GiveItemCreate("Finger",Protagonist,1,0,0)
SetGlobal("Marrow","GLOBAL",2)
~ GOTO 17
  IF ~~ THEN REPLY #17297 /* ~Leave him.~ */ GOTO 22
END

IF ~~ THEN BEGIN 20 // from: 11.3 13.3
  SAY #17189 /* ~His eyes gleam, and he is distracted from the finger bone. "Uh-kay."~ */
  IF ~~ THEN REPLY #17298 /* ~"I'll go fetch some... meat... for you. *Don't* eat that finger bone, or no meat for you. Farewell."~ */ DO ~SetGlobal("Marrow","GLOBAL",4)
~ EXIT
END

IF ~  Global("Marrow","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #17190 /* ~He whines miserably: "H-hun-greeee. Yooo ded-rrr?" He scuttles forward, staring at your arms. "Ded? Hhun-greee." He reaches out to touch you, yellowish spittle dribbling down his chin.~ */
  IF ~  HPGT(Protagonist,1)
~ THEN REPLY #17299 /* ~Let him touch you.~ */ DO ~Damage(Protagonist,LOWER,1)
~ GOTO 4
  IF ~  HPLT(Protagonist,2)
~ THEN REPLY #17300 /* ~Let him touch you.~ */ DO ~Damage(Protagonist,LOWER,1)
~ GOTO 3
  IF ~~ THEN REPLY #17301 /* ~Don't let him touch you.~ */ GOTO 5
END

IF ~~ THEN BEGIN 22 // from: 8.2 9.2 10.1 11.4 13.4 14.3 16.2 19.1
  SAY #17191 /* ~As you leave, he pulls the finger bone from the cord and swallows it whole, ring and all.~ */
  IF ~~ THEN REPLY #17307 /* ~Leave.~ */ DO ~SetGlobal("Marrow","GLOBAL",3)
~ EXIT
END

IF ~  Global("Marrow","GLOBAL",2)
Global("Marrow_Follow","GLOBAL",0)
~ THEN BEGIN 23 // from:
  SAY #17193 /* ~He whines miserably. "H-hun-greeee."~ */
  IF ~~ THEN REPLY #17308 /* ~"Here... have a bite off of me."~ */ GOTO 29
  IF ~~ THEN REPLY #17312 /* ~"That's too bad. Farewell."~ */ EXIT
END

IF ~  Global("Marrow","GLOBAL",2)
Global("Marrow_Follow","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #17194 /* ~He scuttles up to you, whining miserably. "H-hun-greeee."~ */
  IF ~~ THEN REPLY #17313 /* ~"Why are you following me?"~ */ GOTO 25
  IF ~~ THEN REPLY #17314 /* ~Truth: "Stop following me, or I'll kill you. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marrow_2","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #17315 /* ~Bluff: "Stop following me, or I'll kill you. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marrow_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #17321 /* ~"Stop following me. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #17195 /* ~He points at your hands, drooling all the while. "Fing-errrr... hun-greeee!"~ */
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17322 /* ~"Very well. Here, take a bite of my arm."~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 27
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17323 /* ~"Very well. Here, take a bite of my arm."~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 26
  IF ~~ THEN REPLY #17325 /* ~Truth: "Stop following me, or I'll kill you. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marrow_2","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #17326 /* ~Bluff: "Stop following me, or I'll kill you. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marrow_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #17328 /* ~"Stop following me. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.1
  SAY #17196 /* ~His teeth sink into the meat of your forearm and pull a chunk away with a single wrench of his neck. You realize too late that your body was in no condition to receive further punishment, and you collapse to the ground, dead.~ */
  IF ~~ THEN REPLY #17329 /* ~Fall into darkness...~ */ DO ~SetGlobal("Marrow_Follow","GLOBAL",0)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.0
  SAY #17197 /* ~His teeth sink into the meat of your forearm and pull a chunk away with a single wrench of his neck. The pain is excruciating, but Marrow-Friend sits on his haunches as if nothing had happened, chewing noisily at the mouthful of meat he pulled away.~ */
  IF ~~ THEN REPLY #17330 /* ~"Don't follow me any longer. Farewell."~ */ DO ~SetGlobal("Marrow_Follow","GLOBAL",0)
~ EXIT
END

IF ~  Global("Marrow","GLOBAL",3)
~ THEN BEGIN 28 // from:
  SAY #17198 /* ~He whines miserably: "H-hun-greeee."~ */
  IF ~~ THEN REPLY #17331 /* ~"Here... have a bite off of me."~ */ GOTO 29
  IF ~~ THEN REPLY #17334 /* ~"That's too bad. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.0 28.0
  SAY #17199 /* ~"Mmm... mmmeat. No more h-hun-greee..?" The man reaches out for your arm, drool dribbling from the corners of a deranged smile...~ */
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17335 /* ~Let him bite you.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marrow_1","GLOBALGood",1)
Damage(Protagonist,LOWER,3)
~ GOTO 34
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17336 /* ~Let him bite you.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marrow_1","GLOBALGood",1)
Damage(Protagonist,LOWER,3)
~ GOTO 33
  IF ~~ THEN REPLY #17337 /* ~Pull your arm away, leave him.~ */ GOTO 18
END

IF ~  Global("Marrow","GLOBAL",4)
~ THEN BEGIN 30 // from:
  SAY #17200 /* ~He claps his clawed, grasping hands together gleefully. "Hun-greee! Yoooo bring mmmeat?" Yellow spittle drips from his cracked lips.~ */
  IF ~~ THEN REPLY #17338 /* ~Lie: "Yes, but give me the finger bone, first."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marrow_2","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #17339 /* ~"No, not yet."~ */ GOTO 32
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #17201 /* ~He nods greedily, then pauses, sniffing the air around you. "Yoooo no h-have mmmmeat! Yoooo lieee... liee!"~ */
  IF ~~ THEN REPLY #17340 /* ~Lie: "I... must have dropped it somewhere. I'll return soon."~ */ EXIT
  IF ~~ THEN REPLY #17341 /* ~"Here... bite off a piece of me, instead."~ */ GOTO 14
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #17202 /* ~"Nooo? So... h-hungreee..." He looks down at the finger bone, licking his scab-covered lips with a yellow tongue.~ */
  IF ~~ THEN REPLY #17343 /* ~"Don't eat that... I'll return, shortly."~ */ EXIT
  IF ~~ THEN REPLY #17344 /* ~"Here... bite off a piece of me, instead."~ */ GOTO 14
END

IF ~~ THEN BEGIN 33 // from: 29.1
  SAY #17205 /* ~His teeth sink into the meat of your forearm and pull a chunk away with a single wrench of his neck. You realize too late that your body was in no condition to receive further punishment, and you collapse to the ground, dead.~ */
  IF ~~ THEN REPLY #17346 /* ~Fall into darkness...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 29.0
  SAY #17206 /* ~His teeth sink into the meat of your forearm and pull a chunk away with a single wrench of his neck. The pain is excruciating, but Marrow-Friend sits on his haunches as if nothing had happened, chewing noisily at the mouthful of meat he pulled away.~ */
  IF ~~ THEN REPLY #17347 /* ~"I... hope that helps. Farewell."~ */ EXIT
END
