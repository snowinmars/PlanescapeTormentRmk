// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGROSUK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGROSUK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36054 /* ~You see a reptilian creature with a snake like-body, four clawed feet, leathery wings, and a draconian head. The scales covering its body are a vile shade of green. The creature stands upright on its hind legs, balancing with its prehensile tail. As you approach, its eyes narrow to slits and it begins to hiss.~ */
  IF ~~ THEN REPLY #36055 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #36056 /* ~Ignore the creature.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36057 /* ~The air around the creature begins to radiate heat and its scales take on a pale sheen. It gives you a hungry look and appears ready to strike. Suddenly it releases a flurry of hisses and relaxes its stance a bit. "Sssssss! Go. Grossssuk no talk, told wait... Ssssssss..." It glares at you as its tail lashes back and forth.~ */
  IF ~  Global("Snuff_Grosuk","GLOBAL",3)
~ THEN REPLY #36058 /* ~"Sebastion sent me."~ */ GOTO 2
  IF ~~ THEN REPLY #36059 /* ~"What kind of creature are you?"~ */ GOTO 10
  IF ~~ THEN REPLY #36060 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 10.1 12.1
  SAY #36061 /* ~The creature relaxes quite a bit and the air grows cooler. It holds out a clawed hand to you. "Ssssss. Give Grosssuk information." He looks at you expectantly.~ */
  IF ~~ THEN REPLY #36062 /* ~"What information?"~ */ GOTO 3
  IF ~~ THEN REPLY #36063 /* ~"No, Sebastion sent me to kill you."~ */ GOTO 9
  IF ~~ THEN REPLY #36064 /* ~"I don't have it with me, I'll go get it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36065 /* ~It's hard to read facial expressions on a reptile, but you are certain that Grosuk is rather annoyed with you. His tail begins to lash furiously and the air grows warm again. "No quessssstion. Give Grosssuk information or die. Grosssuk then take information from body."~ */
  IF ~~ THEN REPLY #36066 /* ~"I need to know which piece of information is for you. I run errands intended for several people, you understand."~ */ GOTO 4
  IF ~~ THEN REPLY #36067 /* ~"Actually, Sebastion sent me to kill you."~ */ GOTO 9
  IF ~~ THEN REPLY #36068 /* ~"I don't have it with me, I'll go get it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #36069 /* ~He glares at you for a moment while he thinks. Finally he gestures at a nearby tower. "Sssiege tower. Ssssss. How get inssside. Sssebastion say he divine way..." Grosuk takes a step toward you and holds out his hand. "Now give!"~ */
  IF ~~ THEN REPLY #36070 /* ~"Oh, that information. I'm sorry, Sebastion wanted to deliver that one in person. He'll be along soon."~ */ JOURNAL #66527 /* ~The abishai, Grosuk, is looking for a way to get into the siege tower near the open-air market. I wonder what's so important about that tower.~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #36072 /* ~The air around Grosuk begins to radiate heat and his scales take on a pale sheen. He gives you a hungry look and appears ready to strike. He opens his mouth to reveal several rows of razor sharp teeth. "No... Grosssuk think you lie! Give information now Grosssuk kill quick, not ssssslow. Not give, Grosssuk take time. Remove you insssidesss. Let you watch!"~ */
  IF ~~ THEN REPLY #36073 /* ~"Wait, I don't have the information you want, but I know something that I think is worth my life."~ */ GOTO 6
  IF ~~ THEN REPLY #36074 /* ~"Fine, Sebastion sent me to kill you anyway."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #36075 /* ~Grosuk cocks his head to one side and glares at you. He seems lost in thought for a moment. "Grosssuk lisssten. Information good, you live." He gives you a toothy grin. "Not good, you die. Grosssuk give word."~ */
  IF ~~ THEN REPLY #36076 /* ~"Sebastion can't fulfill your contract. He sent me here to kill you."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Grosuk_1","GLOBALGood",-1)
~ JOURNAL #66528 /* ~I told the abishai, Grosuk, that Sebastion sent me to kill him. It probably wasn't the nicest thing I could have done, but it saved my hide...~ */ GOTO 7
  IF ~~ THEN REPLY #36077 /* ~"How do I know you'll keep your word?"~ */ GOTO 8
  IF ~~ THEN REPLY #36078 /* ~"Forget it, Sebastion sent me here to kill you anyway."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0
  SAY #36079 /* ~Grosuk stares at you for some time then releases a stream of frustrated hisses. He begins to flex his claws and his tail lashes back and forth. You notice a barbed stinger appear from the tip of his tail occasionally. "Yesss. Information good. Grosssuk give word, you live. Grosssuk thank. Grosssuk go now, need talk Sssssebassstion."~ */
  IF ~~ THEN REPLY #36080 /* ~"Farewell."~ */ DO ~SetGlobal("SNUFF_GROSUK","GLOBAL",5)
StartCutSceneMode()
StartCutSceneEx("0500cut5",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #36081 /* ~The creature glares at you. "This pact, you and Grosssuk. Grosssuk live by word of pact. Now, you tell."~ */
  IF ~~ THEN REPLY #36082 /* ~"Sebastion can't fulfill your contract. He sent me here to kill you."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Grosuk_1","GLOBALGood",-1)
~ JOURNAL #66528 /* ~I told the abishai, Grosuk, that Sebastion sent me to kill him. It probably wasn't the nicest thing I could have done, but it saved my hide...~ */ GOTO 7
  IF ~~ THEN REPLY #36083 /* ~"Forget it, Sebastion sent me here to kill you anyway."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.1 3.1
  SAY #36084 /* ~Without a moment's hesitation the creature lunges at you.~ */
  IF ~~ THEN REPLY #36085 /* ~Defend yourself.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.1
  SAY #36086 /* ~Every muscle on the creature seems to tense as it releases a storm of hisses. It starts to reach for you, then stops. Hate drips from its eyes when it speaks to you. "Grosssuk no talk. Sssssssssss. You lucky human. You go while ssstill lucky. You ssstay, Grosssuk ssshred!"~ */
  IF ~~ THEN REPLY #36087 /* ~Taunt: "Grossssssuk no talk? Grosssssuk ssssure ssssays a lot for sssssomeone who doesssssn't talk."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grosuk_1","GLOBALLaw",-1)
~ GOTO 11
  IF ~  Global("Snuff_Grosuk","GLOBAL",3)
~ THEN REPLY #36088 /* ~"Sebastion sent me."~ */ GOTO 2
  IF ~~ THEN REPLY #36089 /* ~"Farewell then."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #36090 /* ~The creature cocks its head to one side and stares at you, eyes wide with surprise. After a moment its eyes narrow to slits of hatred and its body begins to shake as its muscles tense to chords of steel. You hear a cracking sound and, glancing down, notice its claws have sunk into the stone beneath its feet. The air around the creature is heavy with heat and almost seems to glow. "Go... now. Ssssssssssssss!"~ */
  IF ~~ THEN REPLY #36091 /* ~Attack it.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #36092 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #36093 /* ~You see Grosuk, the abishai. He looks annoyed at your presence. "Ssssssss... You, come again. Go. Grosssuk kill."~ */
  IF ~~ THEN REPLY #36094 /* ~"You're not the friendliest of creatures, are you?"~ */ GOTO 13
  IF ~  Global("Snuff_Grosuk","GLOBAL",3)
~ THEN REPLY #36095 /* ~"Sebastion sent me."~ */ GOTO 2
  IF ~~ THEN REPLY #36096 /* ~"Fine, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #36097 /* ~Grosuk stares at you, flexing his claws. His eyes narrow to slits as he bends down to look you in the eye. "No, Grosssuk not friend. Now go!"~ */
  IF ~~ THEN REPLY #36098 /* ~"Fine, farewell."~ */ EXIT
END
