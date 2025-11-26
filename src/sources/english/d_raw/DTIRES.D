// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTIRES.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTIRES~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #38116 /* ~You see an aging man dressed in tattered rags. As you draw nearer, you discover that he is missing both of his eyes. The scarred tissue of his eyelids has receded into his empty sockets, giving his features the macabre appearance of a decaying skull. ~ */
  IF ~~ THEN REPLY #38141 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #38142 /* ~Leave the old man alone.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from: 0.0
  SAY #38117 /* ~The old man turns in your general direction, his arms outstretched as if feeling for you. "Darkness who be in voice? The friend words I'll speak of you and call chaos." ~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
GlobalGT("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #38143 /* ~"Words do speak the chaos of I. Fear not, I *am* a fellow member of the Xaositect faction."~ */ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,INT)
GlobalGT("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #38144 /* ~"Voice... speak - sneak - beak."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,13,INT)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #38145 /* ~"Speak the words of chaos and you'll call me friend? Is this jumbled up scramblespeak really necessary?"~ */ GOTO 16
  IF ~  CheckStatLT(Protagonist,14,INT)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #38146 /* ~"Hunh?"~ */ GOTO 16
  IF ~~ THEN REPLY #38147 /* ~"Uh... never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #38118 /* ~"Ah... chaos you be, as I and me." The blind man smiles and takes a careful step toward you. As he moves, you notice that he seems to be favoring one leg.~ */
  IF ~  Global("Know_Tiresias","GLOBAL",0)
~ THEN REPLY #38148 /* ~"What's wrong with your leg... are you injured?"~ */ GOTO 3
  IF ~  Global("Know_Tiresias","GLOBAL",0)
~ THEN REPLY #38149 /* ~"Can you tell me how to get through to the Alley of Lingering Sighs?"~ */ GOTO 15
  IF ~  Global("Know_Tiresias","GLOBAL",1)
~ THEN REPLY #38150 /* ~"You said you know of a way to get past the Starved Dogs and through to the Alley?"~ */ GOTO 8
  IF ~  Global("Know_Tiresias","GLOBAL",2)
~ THEN REPLY #38151 /* ~"Where was that secret door again?"~ */ GOTO 18
  IF ~~ THEN REPLY #38152 /* ~"Yes... well, I must be off now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #38119 /* ~"No, fine I'll be. Just a bit of slashin' is all." As he speaks, he reaches down and lifts away the ragged cloth covering his upper leg, revealing a nasty gash that runs from his kneecap to his thigh.~ */
  IF ~~ THEN REPLY #38153 /* ~"What happened?"~ */ GOTO 4
  IF ~~ THEN REPLY #38154 /* ~"Can you tell me how to get through to the Alley of Lingering Sighs?"~ */ GOTO 15
  IF ~~ THEN REPLY #38155 /* ~"Yes... well, I must be off now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #38120 /* ~"Tasted a blade from one of the Starved Dogs. Gathered in the main hall across the way, they are. Howling - growling - prowling."~ */
  IF ~  Global("Know_SDB","GLOBAL",0)
~ THEN REPLY #38157 /* ~"Tell me about these Starved Dogs."~ */ GOTO 5
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #38158 /* ~"The Starved Dogs Barking? How many of them are in there?"~ */ GOTO 7
  IF ~~ THEN REPLY #38159 /* ~"I see. Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 15.0
  SAY #38122 /* ~"They be of vicious chaos. Brothers as one, but brothers to none."~ */
  IF ~~ THEN REPLY #38160 /* ~"If they are Xaositects, why did they attack you?"~ */ GOTO 6
  IF ~~ THEN REPLY #38161 /* ~"How many of them are there?"~ */ GOTO 7
  IF ~~ THEN REPLY #38162 /* ~"I see. Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #38127 /* ~The old man shakes his head. "Matters not. Attack anyone, anything, they will. That is how chaos speaks to them. You too will they slash, if you go in there."~ */
  IF ~~ THEN REPLY #38163 /* ~"How many of them are there?"~ */ GOTO 7
  IF ~~ THEN REPLY #38165 /* ~"I see. Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.1 6.0 15.1
  SAY #38129 /* ~The old Chaosman pauses for a moment, his sightless gaze fixed on empty space. "Many, they are... strong and vicious. But another way, there is. A secret way known only to I and me. A safe way through to the Alley beyond."~ */
  IF ~~ THEN REPLY #38166 /* ~"What is this secret way?"~ */ DO ~SetGlobal("Know_Tiresias","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #38167 /* ~"Never mind. I'll find my own way."~ */ DO ~SetGlobal("Know_Tiresias","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2 7.0
  SAY #38130 /* ~"Dark is not light and light is not dark. Bright, shiny coins may yet illuminate." The old man rubs his fingers together for emphasis.~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #38168 /* ~Give the blind man ten coppers.~ */ GOTO 9
  IF ~  PartyGoldGT(19)
~ THEN REPLY #38169 /* ~Give the blind man twenty coppers.~ */ DO ~TakePartyGold(20)
~ GOTO 10
  IF ~~ THEN REPLY #38170 /* ~"I'll not pay you a single coin. You'll tell me what I want to know... or I'll show you the true meaning of darkness."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Tiresias_1","GLOBALGood",-1)
~ GOTO 11
  IF ~  Global("Sybil_Quest","GLOBAL",1)
~ THEN REPLY #38171 /* ~"How about dark for dark. I can tell you the whereabouts of a certain thief hiding here in the Tenement."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Tiresias_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #38172 /* ~"Never mind. I'll find my own way."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #38131 /* ~You deposit ten coins in the old man's hand. He waits for a moment, then jostles the handful of coins as if to judge their weight. After a moment of consideration, he returns the coins to you. "Not enough. Is not life worth more than ten coins?"~ */
  IF ~  PartyGoldGT(19)
~ THEN REPLY #38173 /* ~Give him twenty coppers.~ */ DO ~TakePartyGold(20)
~ GOTO 10
  IF ~~ THEN REPLY #38174 /* ~"You wish to haggle? Very well... how about you tell me what I want to know and I'll let you live."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Tiresias_1","GLOBALGood",-1)
~ GOTO 11
  IF ~  Global("Sybil_Quest","GLOBAL",1)
~ THEN REPLY #38175 /* ~"How about dark for dark. I can tell you the whereabouts of a certain thief hiding here in the Tenement."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Tiresias_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #38176 /* ~"Never mind. I'll find my own way."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1 9.0 13.1
  SAY #38132 /* ~You hand the old man the coins and he quickly deposits them in his pocket. "Find you the door which is hidden in the southwestern chamber. Opens does it on the far side of the main hall, near the exit to the Alley." ~ */
  IF ~~ THEN REPLY #38177 /* ~"Thank you for your help. Farewell."~ */ DO ~SetGlobal("Know_Tiresias","GLOBAL",2)
~ JOURNAL #37703 /* ~I met a blind, old Xaositect in the Tenement of Thugs. He told me of a secret door that would allow me to pass through to the Alley of Lingering Sighs without encountering the Starved Dogs Barking gathered in the main hall of the Tenement. The door is supposedly in a southwestern chamber, adjacent to the main hall.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2 9.1 13.2 17.0
  SAY #38133 /* ~The old man seems outraged by your threat. "No friend you be and no friends have you here! Friends I have and friends I call!" He takes a deep breath as if he is about to begin shouting.~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #38178 /* ~Reach out and snap his neck before he can call out.~ */ GOTO 12
  IF ~~ THEN REPLY #38179 /* ~Attack him.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Tenement_Alarm","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #38180 /* ~Leave quickly.~ */ DO ~Enemy()
SetGlobal("Tenement_Alarm","GLOBAL",1)
FloatMessage(Myself,9635)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #38134 /* ~You quickly set upon the blind man. Cupping one hand over his mouth to prevent him from screaming, you grab the back of his head with your free hand and twist his neck until you hear a sharp crack.~ */
  IF ~~ THEN REPLY #38181 /* ~"All too easy."~ */ DO ~IncrementGlobal("Choke","GLOBAL",1)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.3 9.2
  SAY #38135 /* ~"Thief? Here? Someone *has* stolen from Tiresias... maybe it be the one speak you of." The old man reaches up to stroke his chin, as if considering your offer. "Agreed... dark for dark. Tell first you will."~ */
  IF ~~ THEN REPLY #38182 /* ~"Your thief is nothing but a young whelp. She is hiding in the antechamber across the way, near the door to the main hall."~ */ DO ~SetGlobal("Sybil_Betrayed","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Tiresias_2","GLOBALGood",-1)
~ GOTO 14
  IF ~  PartyGoldGT(19)
~ THEN REPLY #38183 /* ~"On second thought, here's twenty coins. Tell me what you know."~ */ DO ~TakePartyGold(20)
~ GOTO 10
  IF ~~ THEN REPLY #38184 /* ~"On second thought, why don't you tell me what I want to know... and I'll let you live."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Tiresias_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #38185 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #38136 /* ~Tiresias nods in appreciation. "Young girl-thief, say you? See to her, I shall."~ */
  IF ~~ THEN REPLY #38186 /* ~"Right. Now, tell me about this secret way."~ */ GOTO 19
  IF ~~ THEN REPLY #38188 /* ~"Somehow I doubt that. Now, tell me what you know old man."~ */ GOTO 19
END

IF ~~ THEN BEGIN 15 // from: 2.1 3.1
  SAY #38137 /* ~"Yes, Tiresias knows the way. The exit to the Alley is through the main hall to the south, but get through you cannot. Starved Dogs gather there and block the way."~ */
  IF ~  Global("Know_SDB","GLOBAL",0)
~ THEN REPLY #38189 /* ~"Tell me about these Starved Dogs."~ */ GOTO 5
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #38190 /* ~"The Starved Dogs Barking? How many of them are in there?"~ */ GOTO 7
  IF ~~ THEN REPLY #38191 /* ~"I see. Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 1.2 1.3
  SAY #38138 /* ~The old man cocks his head to one side, his sightless gaze fixed on empty space. "Chaos of you are not. Not! Pot! Snot!"~ */
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #38192 /* ~"Uh... you're not making any sense."~ */ GOTO 17
  IF ~~ THEN REPLY #38193 /* ~"Has everyone here lost their minds?"~ */ GOTO 17
  IF ~~ THEN REPLY #38194 /* ~Ignore his ramblings, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #38139 /* ~"Walk, not talk. Talk is complete. Completed to completion!" He turns his back to you, apparently done with the conversation.~ */
  IF ~~ THEN REPLY #38195 /* ~"Look, old man, you better give me some straight answers or you'll soon be missing more than just your eyes."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Tiresias_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #38196 /* ~"It's obvious this is getting me nowhere. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.3
  SAY #38140 /* ~"In a southwest chamber lies the hidden door. Not through door across, lead that one does to the Dogs."~ */
  IF ~~ THEN REPLY #38197 /* ~"Thank you for your help. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.0 14.1
  SAY #38187 /* ~"Find you the door which is hidden in the southwestern chamber. Opens does it on the far side of the main hall, near the exit to the Alley." ~ */
  IF ~~ THEN REPLY #38198 /* ~"Thank you for your help. Farewell."~ */ DO ~SetGlobal("Know_Tiresias","GLOBAL",2)
~ JOURNAL #37703 /* ~I met a blind, old Xaositect in the Tenement of Thugs. He told me of a secret door that would allow me to pass through to the Alley of Lingering Sighs without encountering the Starved Dogs Barking gathered in the main hall of the Tenement. The door is supposedly in a southwestern chamber, adjacent to the main hall.~ */ EXIT
END
