// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGLYVE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGLYVE~

IF ~  Global("Water","GLOBAL",3)
~ THEN BEGIN 0 // from: 3.0
  SAY #24037 /* ~The stone face is silent. A trickle of clear water runs from the corner of its eye, and the grimace carved into the face has loosened.~ */
  IF ~~ THEN REPLY #24038 /* ~"Glyve, I need more answers from you..."~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #24039 /* ~"Very well, then."~ */ EXTERN ~DMORTE~ 228
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #24040 /* ~"Very well, then."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #24041 /* ~The face remains impassive and silent. ~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #24042 /* ~"Very well, then."~ */ EXTERN ~DMORTE~ 228
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #24043 /* ~"Very well, then."~ */ EXIT
END

IF ~  Global("Water","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #24044 /* ~Glyve's immobile eyes seem to strain toward you as you approach him. "Have... you decided if ... you want your... answer yet?"~ */
  IF ~~ THEN REPLY #24045 /* ~"Yes, give it to me."~ */ DO ~SetGlobal("Water","GLOBAL",3)
~ GOTO 3
  IF ~~ THEN REPLY #24046 /* ~"No, not yet. Answer some other questions for me first."~ */ GOTO 4
  IF ~~ THEN REPLY #24047 /* ~"No, not yet. Farewell, Glyve."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.2 15.0
  SAY #24048 /* ~"Seek out... the woman called... 'Nemelle.' She resides in ... the Clerk's Ward... in Upper Sigil. I know not... where exactly... Best of luck ... in *your* quest... immortal." The voice seems to fade as it speaks to you.~ */
  IF ~~ THEN REPLY #24049 /* ~"Thanks, Glyve. I had a few more questions."~ */ DO ~SetGlobal("Seek_Word","GLOBAL",1)
~ JOURNAL #66298 /* ~Glyve told me to seek out a woman named Nemelle in the Clerk's Ward so that I might find the word that will unleash the full power of the Decanter of Endless Water.~ */ GOTO 0
  IF ~~ THEN REPLY #24050 /* ~"Thanks, Glyve. Farewell."~ */ DO ~SetGlobal("Seek_Word","GLOBAL",1)
~ JOURNAL #66298 /* ~Glyve told me to seek out a woman named Nemelle in the Clerk's Ward so that I might find the word that will unleash the full power of the Decanter of Endless Water.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.1 6.1 7.1 8.1 9.1 10.2 11.2 12.2 13.2 14.1 16.0 18.0 18.1 19.0 22.1 23.0
  SAY #24051 /* ~"What... did you want... to know?"~ */
  IF ~~ THEN REPLY #24052 /* ~"Tell me of yourself. How did you come to be in this situation?"~ */ GOTO 5
  IF ~~ THEN REPLY #24053 /* ~"What can you tell me of the catacombs around us?"~ */ GOTO 13
  IF ~  Global("Water","GLOBAL",2)
~ THEN REPLY #24054 /* ~"Come to think of it, give me the answer you promised me."~ */ DO ~SetGlobal("Water","GLOBAL",3)
~ GOTO 3
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #24055 /* ~"What did you want me to do for you again?"~ */ GOTO 9
  IF ~  Global("Water","GLOBAL",1)
PartyHasItem("Decant")
~ THEN REPLY #24056 /* ~"I have the flask for you."~ */ GOTO 14
  IF ~~ THEN REPLY #24057 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #24058 /* ~"I was once... a respected leader... of my community... in the Lower Ward. A petty lord... sought to increase his power... at the expense of my people... my friends... my relatives... and friends and I spoke... against him."~ */
  IF ~~ THEN REPLY #24059 /* ~"And then what?"~ */ GOTO 6
  IF ~~ THEN REPLY #24060 /* ~"You know something? Never mind. Answer some other questions for me."~ */ GOTO 4
  IF ~~ THEN REPLY #24061 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #24062 /* ~"And then... he captured us... one by one... and bound our spirits and senses... into these screaming faces... under the Ditch... where all filth in Sigil... comes eventually. And then... he let the polluted waters above... flow through our mouths... and noses... and eyes."~ */
  IF ~  Global("Water","GLOBAL",0)
~ THEN REPLY #24063 /* ~"Is there anything I can do to help?"~ */ DO ~SetGlobal("Water","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #24064 /* ~"I see. I had some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #24065 /* ~"Hm. Interesting. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #24066 /* ~"Horrible. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #24067 /* ~"I am cursed to... remain here until... fresh water passes my lips... There is a ... magical flask of water... in the ... Drowned Nations. Bring it to me... and give me a taste of it... and I shall tell you... of someone... who can help you unlock... its full potential... and you shall never... lack for water... again."~ */
  IF ~~ THEN REPLY #24068 /* ~"Where is this flask?"~ */ JOURNAL #66299 /* ~A stone face in the Weeping Stone Catacombs told me of his fate: to have his senses bound into a carven stone head, through which all the filth of Sigil would eventually flow. This curse can be broken by a taste of pure water. Apparently, an artist/Collector named Chad knows where I can find a flask that will fulfill these conditions.~ */ GOTO 8
  IF ~~ THEN REPLY #24069 /* ~"Interesting. Answer some other questions for me."~ */ GOTO 4
  IF ~~ THEN REPLY #24070 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #24071 /* ~"I do not... know. There was ... an artist named... Chad who frequented... these tunnels. He knew. Find him... and he may tell you."~ */
  IF ~~ THEN REPLY #24072 /* ~"And how do I get there?"~ */ GOTO 10
  IF ~~ THEN REPLY #24073 /* ~"All right. Answer some other questions for me."~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #24074 /* ~"I'll find him. Farewell."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #24075 /* ~"I'll find him. Farewell."~ */ EXTERN ~DMORTE~ 229
  IF ~~ THEN REPLY #24076 /* ~"I'll see what I can do. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.3
  SAY #24077 /* ~"Water... fresh water... from a magical flask... in the Drowned Nations..."~ */
  IF ~~ THEN REPLY #24078 /* ~"And how do I get there?"~ */ GOTO 10
  IF ~~ THEN REPLY #24079 /* ~"Got it. Answer some other questions for me."~ */ GOTO 4
  IF ~~ THEN REPLY #24080 /* ~"Got it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #24081 /* ~"Through the Dead Nations... where the dead walk ... and rule... or through the Warrens of Thought... where Many-as-One holds sway... Neither is without... its risks."~ */
  IF ~~ THEN REPLY #24082 /* ~"Dead Nations?"~ */ GOTO 11
  IF ~~ THEN REPLY #24083 /* ~"Many-as-One?"~ */ GOTO 12
  IF ~~ THEN REPLY #24084 /* ~"Got it. I had more questions for you..."~ */ GOTO 4
  IF ~~ THEN REPLY #24085 /* ~"Got it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0 13.0
  SAY #24086 /* ~"The dead... have achieved life... in their own way. They rule... a portion of these... catacombs. They struggle with... Many-as-One... for the heart of these... tunnels."~ */
  IF ~~ THEN REPLY #24087 /* ~"Tell me more of the catacombs."~ */ GOTO 13
  IF ~~ THEN REPLY #24088 /* ~"Tell me about Many-as-One."~ */ GOTO 12
  IF ~~ THEN REPLY #24089 /* ~"Give me some other answers..."~ */ GOTO 4
  IF ~~ THEN REPLY #24090 /* ~"Thanks, Glyve. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.1 13.1
  SAY #24091 /* ~"You have heard... of cranium rats? When they gather... they become more powerful... a shared mind. They and their servants... wererats... seek mastery... of these undertunnels. They war with ... the Dead Nations."~ */
  IF ~~ THEN REPLY #24101 /* ~"Tell me of the Dead Nations."~ */ GOTO 11
  IF ~~ THEN REPLY #24102 /* ~"Tell me more of the catacombs."~ */ GOTO 13
  IF ~~ THEN REPLY #24103 /* ~"I had some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #24105 /* ~"Thanks, Glyve. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 4.1 11.0 12.1
  SAY #24108 /* ~"The catacombs were carved... eons ago... to house the dead of the city... who did not wish ... the tender ministrations of the Dustmen. They have become... the refuse ground of the city... where dwell monsters barely seen... where humans prowl like... scavengers among the scavengers. Many-as-One patrols these tunnels... and has turned many against ... their natures. The Dead Nations... prowl as well... guarding against... the depredations of ... the humans ... who come among them."~ */
  IF ~~ THEN REPLY #24111 /* ~"Tell me of the Dead Nations."~ */ GOTO 11
  IF ~~ THEN REPLY #24113 /* ~"Tell me of Many-as-One."~ */ GOTO 12
  IF ~~ THEN REPLY #24115 /* ~"I had some other questions."~ */ GOTO 4
  IF ~~ THEN REPLY #24116 /* ~"Thanks, Glyve. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.4 17.1
  SAY #24118 /* ~A note of eagerness creeps into Glyve's dead voice: "You have it? Pour some of ... its water across ... my lips... and I shall tell you... what I promised ... to tell you."~ */
  IF ~~ THEN REPLY #24120 /* ~"Here you go."~ */ DO ~SetGlobal("Water","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 15
  IF ~~ THEN REPLY #24122 /* ~"Wait. I had some other questions for you."~ */ GOTO 4
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #24123 /* ~The clear water from the flask trickles across the stone lips, diluting the filthy flow that spews from the holes. As you watch, the Ditch's water slowly dissipates entirely, the dirty taint of it replaced by clear, fresh water. Glyve groans in ecstasy. After a moment, he says, "Do you wish your answer now or later?"~ */
  IF ~~ THEN REPLY #24125 /* ~"Give it to me now."~ */ DO ~SetGlobal("Water","GLOBAL",3)
~ GOTO 3
  IF ~~ THEN REPLY #24127 /* ~"Later. I had some questions for you."~ */ GOTO 16
  IF ~~ THEN REPLY #24128 /* ~"Later. Farewell, Glyve."~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.1 15.2
  SAY #24130 /* ~"I shall... keep myself... conscious... until you return... for your answer..."~ */
  IF ~~ THEN REPLY #24132 /* ~"Good. Now answer some questions for me."~ */ GOTO 4
  IF ~~ THEN REPLY #24137 /* ~"Good. Farewell."~ */ EXIT
END

IF ~  Global("Water","GLOBAL",1)
~ THEN BEGIN 17 // from:
  SAY #24138 /* ~"Have you found... the flask of which... I spoke?"~ */
  IF ~~ THEN REPLY #24140 /* ~"Not yet."~ */ GOTO 18
  IF ~  PartyHasItem("Decant")
~ THEN REPLY #24142 /* ~"Yes."~ */ GOTO 14
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #24144 /* ~"I beg of you... please find it... and ease my torment."~ */
  IF ~~ THEN REPLY #24145 /* ~"I'll do my best. In the meantime, I had some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #24146 /* ~"We'll see. Answer some questions for me..."~ */ GOTO 4
  IF ~~ THEN REPLY #24147 /* ~"I'm trying. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #24148 /* ~"Perhaps. Farewell."~ */ EXIT
END

IF ~  Global("Glyve_Talk","AR1400",1)
~ THEN BEGIN 19 // from:
  SAY #24149 /* ~"You have returned... to what do I owe ... this honor?"~ */
  IF ~~ THEN REPLY #24151 /* ~"I needed some questions answered."~ */ GOTO 4
  IF ~~ THEN REPLY #24153 /* ~"Good question. Farewell."~ */ EXIT
END

IF ~  Global("Glyve_Talk","AR1400",0)
~ THEN BEGIN 20 // from:
  SAY #24155 /* ~As you pass one of the twisted stone faces on the walls, it calls out to you in a creaking voice that sounds like the shifting of boulders. "Immortal... regard me. I am... Glyve. I would have... words with you."~ */
  IF ~~ THEN REPLY #24157 /* ~"How did you know I'm immortal?"~ */ DO ~SetGlobal("Glyve_Talk","AR1400",1)
~ GOTO 21
  IF ~~ THEN REPLY #24158 /* ~"What did you want to say?"~ */ DO ~SetGlobal("Glyve_Talk","AR1400",1)
~ GOTO 22
  IF ~~ THEN REPLY #24160 /* ~"I don't think so."~ */ DO ~SetGlobal("Glyve_Talk","AR1400",1)
~ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #24161 /* ~"I see... a burning purpose... within your shell. I see... many things in the falling... dust of these... tunnels. You lack... something essential... and that keeps you... from death's sweet embrace."~ */
  IF ~~ THEN REPLY #24162 /* ~"What did you want to say to me?"~ */ GOTO 22
  IF ~~ THEN REPLY #24163 /* ~"That's all fine and good, but..."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 20.1 20.2 21.0 21.1
  SAY #24165 /* ~"Listen: This place holds... much danger for you. Treachery awaits you... on the surface... and your way is... long and winding. At the end... you will find... what you have sought... but you may not ... want it then."~ */
  IF ~~ THEN REPLY #24167 /* ~"Are you some sort of oracle?"~ */ GOTO 23
  IF ~~ THEN REPLY #24168 /* ~"Maybe you'll have some answers for me..."~ */ GOTO 4
  IF ~~ THEN REPLY #24169 /* ~"I see. Perhaps I'll be back."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #24170 /* ~"Oracle? No... I observe. That is all."~ */
  IF ~~ THEN REPLY #24171 /* ~"In that case, perhaps you can answer some questions I had..."~ */ GOTO 4
  IF ~~ THEN REPLY #24172 /* ~"That's all? Forget it, then. Farewell."~ */ EXIT
END
