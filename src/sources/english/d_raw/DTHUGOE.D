// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGOE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGOE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #30170 /* ~You see a shady looking fellow standing before you, picking his teeth with what appears to be a tiny metal fork. His chest is covered by patchwork armor adorned with large spikes, and a long knife hangs at his side. You notice he is missing his right ear.~ */
  IF ~~ THEN REPLY #30184 /* ~"Greetings."~ */ JOURNAL #28824 /* ~I encountered a one-eared tiefling lurking in the shadows near the great archway, in the northern section of the Hive. Something in his eyes told me he was not one to be trifled with.~ */ GOTO 1
  IF ~~ THEN REPLY #30185 /* ~Pass on by.~ */ JOURNAL #28824 /* ~I encountered a one-eared tiefling lurking in the shadows near the great archway, in the northern section of the Hive. Something in his eyes told me he was not one to be trifled with.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #30171 /* ~He regards you coolly from the shadows, as if sizing you up.~ */
  IF ~~ THEN REPLY #30186 /* ~"I said *G-R-E-E-T-I-N-G-S.* What's the matter... your other ear not working?"~ */ GOTO 2
  IF ~~ THEN REPLY #30187 /* ~"I had some questions for you..."~ */ GOTO 2
  IF ~~ THEN REPLY #30188 /* ~Leave him alone.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #30172 /* ~The one-eared tiefling scowls at you threateningly. "Pike off, berk... or I'll have your guts for garters."~ */
  IF ~~ THEN REPLY #30189 /* ~"If it's garters you're after... I just happen to have a pair. Your mother left them in my bed last night."~ */ GOTO 13
  IF ~  Global("Nestor_Quest","GLOBAL",1)
HasItem("NesFork","ThugOE")
!Dead("Nestor")
~ THEN REPLY #30190 /* ~"How did you lose that ear?"~ */ GOTO 3
  IF ~  Global("Nestor_Quest","GLOBAL",1)
HasItem("NesFork","ThugOE")
!Dead("Nestor")
~ THEN REPLY #30191 /* ~"You wouldn't have happened to have lost that ear while robbing an old man here in the Hive?"~ */ GOTO 4
  IF ~~ THEN REPLY #30192 /* ~Ignore his threats and walk away.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #30173 /* ~"What did yeh just say?" His right hand drifts to the hilt of his knife.~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #30193 /* ~"Just curious. Behind every scar is a good tale... as you can see, I speak from experience."~ */ GOTO 6
  IF ~~ THEN REPLY #30194 /* ~"I think you lost it while robbing an old man here in the Hive."~ */ GOTO 4
  IF ~~ THEN REPLY #30195 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2 3.1 6.1 7.1 8.1 9.1 10.1 11.2
  SAY #30174 /* ~"I donnae know what ye're talkin' about, berk." He glares at you angrily. "Now, I suggest yeh get yer mangled carcass out of my sight before I carve my name into yeh!"~ */
  IF ~~ THEN REPLY #30196 /* ~"Certainly. Just give me the fork you stole from him and I'll be on my way."~ */ GOTO 5
  IF ~~ THEN REPLY #30197 /* ~"I doubt you could even *spell* your name, you clueless sod."~ */ GOTO 13
  IF ~~ THEN REPLY #30198 /* ~"Look... why don't you come clean while you still have one good ear left?"~ */ GOTO 13
  IF ~~ THEN REPLY #30199 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #30175 /* ~With a flash of movement too quick to follow, he whips his knife from its sheath and begins waving it menacingly before you. "Why don't yeh come an' take it from me, berk?" ~ */
  IF ~~ THEN REPLY #30200 /* ~"If that's the way you want to play it... let's dance."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #30201 /* ~"Why don't you put that blade away before you get hurt?"~ */ GOTO 13
  IF ~~ THEN REPLY #30202 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0
  SAY #30176 /* ~"Aye, it do look as though yeh seen yer share of slashin'." He manages a small chuckle, then runs his fingers across the scars on the side of his head. "At least yeh still have both ears."~ */
  IF ~~ THEN REPLY #30203 /* ~"What happened?"~ */ GOTO 7
  IF ~~ THEN REPLY #30204 /* ~"That's because I don't go around mugging old men with sharp teeth."~ */ GOTO 4
  IF ~~ THEN REPLY #30205 /* ~"That I do. Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #30177 /* ~"A while back, I bobbed an ol' petitioner sod..." His face takes on a sullen expression as he begins to relate the tale. "The silly blighter wouldn't go along wit' it..."~ */
  IF ~~ THEN REPLY #30206 /* ~"Go on..."~ */ GOTO 8
  IF ~~ THEN REPLY #30207 /* ~"Let me guess... he bit your ear off, so you clubbed him senseless and peeled his fork. Am I right?"~ */ GOTO 4
  IF ~~ THEN REPLY #30208 /* ~"Interesting... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #30178 /* ~"So I has t'get rough wit' the ol' sod... an' while we was scrappin', he gets a hold of my ear an' bites it clean off!"~ */
  IF ~~ THEN REPLY #30209 /* ~"Then what happened?"~ */ GOTO 9
  IF ~~ THEN REPLY #30210 /* ~"So *you're* the one who stole Nestor's fork."~ */ GOTO 4
  IF ~~ THEN REPLY #30211 /* ~"Interesting... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #30179 /* ~"What do yeh think happened? The barmy sod bit my ear off, so I thumped his skull and put him in the dead-book! I'm right sorry I did, too..." He glances around nervously before continuing. "I think his spirit's hauntin' me."~ */
  IF ~~ THEN REPLY #30212 /* ~"Haunting you?"~ */ GOTO 10
  IF ~~ THEN REPLY #30213 /* ~"The old man's not dead, you fool. I spoke with him over at the flophouse and he says he wants his fork back."~ */ GOTO 4
  IF ~~ THEN REPLY #30214 /* ~"Interesting... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #30180 /* ~He nods and quickly traces a semicircle over his heart. "Aye, 'tis true. Sometimes I hear his voice in my head, cursin' an' tellin' me how he's waiting for me. Scares the pants off me, it does."~ */
  IF ~~ THEN REPLY #30215 /* ~"Maybe I can help you lay his spirit to rest... stop him from 'haunting' you."~ */ GOTO 11
  IF ~~ THEN REPLY #30216 /* ~"The old man's not dead, you fool. I spoke with him over at the flophouse and he says he wants his fork back."~ */ GOTO 4
  IF ~~ THEN REPLY #30217 /* ~"Interesting... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #30181 /* ~He takes a step back from you and cocks his head slightly. "Yeh can do that? How?"~ */
  IF ~~ THEN REPLY #30218 /* ~"By putting *YOU* in the dead-book, you cross-trading piece of filth."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_OE_1","GLOBALGood",-1)
~ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #30219 /* ~Lie: "I have powers over the dead. All I need to quiet the spirit is an item that belonged to it in life."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_OE_1","GLOBALLaw",-1)
~ GOTO 12
  IF ~~ THEN REPLY #30220 /* ~"Give me what you stole from him, and I'll see to it that he goes away."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_OE_1","GLOBALLaw",1)
~ GOTO 4
  IF ~~ THEN REPLY #30221 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #30182 /* ~He eyes you suspiciously for a moment, then shrugs his shoulders in resignation. "Alright, cutter... here yeh go. Don't s'pose it's worth much anyhow." He hands you a small, steel fork. "Just get rid of the spirit, will yeh?"~ */
  IF ~~ THEN REPLY #30222 /* ~"Have no fear... the spirit shall trouble you no more. Farewell."~ */ DO ~GiveItem("NesFork",[PC])
AddexperienceParty(200)
EscapeArea()
~ JOURNAL #28823 /* ~I managed to trick the one-ear tiefling thug into giving me Nestor's fork. He said he was being haunted and that he heard voices in his head. He's probably just as crazy as the old man is.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.0 4.1 4.2 5.1 11.0
  SAY #30183 /* ~"Yeh sure do have a sharp tongue, berk. I think I'll cut it out an' feed it to you!" He lunges at you, his knife leading the way.~ */
  IF ~~ THEN REPLY #30223 /* ~Defend yourself.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
