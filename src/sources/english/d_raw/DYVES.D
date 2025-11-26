// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYVES.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DYVES~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 67 71 even though they appear after this state */
~  Global("Yves","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3005 /* ~This fetching young woman has a far-away look in her soft, sea-green eyes.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3006 /* ~"Greetings..."~ */ DO ~SetGlobal("Yves","GLOBAL",1)
~ GOTO 1
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39201 /* ~"Greetings..."~ */ DO ~SetGlobal("Yves","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #39202 /* ~Leave her be.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #39203 /* ~"Greetings. I am Yves, the Tale-Chaser."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 407
END

IF ~~ THEN BEGIN 2 // from:
  SAY #39204 /* ~Yves continues, unperturbed. "Have you come to trade tales?"~ */
  IF ~~ THEN REPLY #39205 /* ~"I'd like to trade tales."~ */ GOTO 19
  IF ~~ THEN REPLY #39206 /* ~"I had some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #39207 /* ~"I was just passing by. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #39208 /* ~"Greetings. I am Yves, the Tale-Chaser. Have you come to trade tales?"~ */
  IF ~~ THEN REPLY #39209 /* ~"I'd like to trade tales."~ */ GOTO 19
  IF ~~ THEN REPLY #39210 /* ~"I had some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #39211 /* ~"I was just passing by. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.1 5.1 6.0 7.1 8.0 9.1 10.0 11.0 12.1 14.1 15.1 16.1 17.1 19.11 20.5 21.1 22.1 24.1 25.1 26.1 27.1 28.1 29.1 30.1 31.1 32.1 33.1 34.1 35.1 36.1 37.1 38.1 39.1 40.1 41.1 42.1 43.1 44.1 45.1 46.1 47.1 48.1 49.1 50.1 51.1 52.1 53.1 54.1 55.1 56.1 57.1 58.1 59.1 60.1 62.1 63.5 64.1 65.1 66.12 67.1 68.0 69.0 70.0 71.1 72.1 73.1 74.1 75.0 76.1 77.1 78.1 79.1 80.0 81.1
  SAY #39212 /* ~Yves nods quietly.~ */
  IF ~~ THEN REPLY #39213 /* ~"Why are you called the 'Tale-Chaser'?"~ */ DO ~SetGlobal("Yves","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #39214 /* ~"What are you doing here?"~ */ GOTO 12
  IF ~~ THEN REPLY #39215 /* ~"Can you tell me about this place?"~ */ DO ~SetGlobal("Know_Yves_Grace","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Yvana","GLOBAL",1)
~ THEN REPLY #39216 /* ~"Yves... you look familiar. Is your mother named Yvana?"~ */ GOTO 68
  IF ~  GlobalGT("Yvana","GLOBAL",1)
~ THEN REPLY #39217 /* ~"Have you spoken to your mother lately, Yves?"~ */ DO ~SetGlobal("Yvana","GLOBAL",3)
~ GOTO 69
  IF ~~ THEN REPLY #39218 /* ~"May we trade tales?"~ */ GOTO 19
  IF ~  GlobalGT("Yves_Shared","AR0605",0)
~ THEN REPLY #39219 /* ~"Can you tell me one of the stories you've already shared again?"~ */ GOTO 66
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #39220 /* ~"What can you tell me about the silent prostitute?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_2","AR0605",1)
~ JOURNAL #66744 /* ~One of the prostitutes suggested that I ask Dolora about Ecco, the silent prostitute. She said that Dolora sometimes spoke to an old lover of Ecco's, one who knew her before she stopped speaking.~ */ GOTO 70
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67851 /* ~"What can you tell me about the silent prostitute?"~ */ DO ~SetGlobal("Ecco_Rumor_2","AR0605",1)
~ JOURNAL #66744 /* ~One of the prostitutes suggested that I ask Dolora about Ecco, the silent prostitute. She said that Dolora sometimes spoke to an old lover of Ecco's, one who knew her before she stopped speaking.~ */ GOTO 70
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #39221 /* ~"I heard that Kesai-Serris is Ravel's daughter. Is that true?"~ */ JOURNAL #66754 /* ~I asked Yves if she knew whether or not Kesai-Serris was Ravel's daughter, but she only told me a tale about digging deeply to uncover the truth. I suppose I'll just have to keep asking around...~ */ GOTO 8
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #39222 /* ~"I'm trying to find Vivian's scent... do you know where it might be?"~ */ JOURNAL #66727 /* ~One of the prostitutes suggested that I ask Nenny if she knows anything about who took Vivian's personal scent. Apparently, Nenny's got a reputation for always wandering around and watching what other people are doing.~ */ GOTO 6
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #39223 /* ~"I'm trying to find Marissa's Crimson Veil... do you know where it might be?"~ */ GOTO 5
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #39224 /* ~"Do you know anything about Ravel Puzzlewell?"~ */ GOTO 7
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #39225 /* ~"I've spoken to nine prostitutes altogether... do you know who or where the tenth student is?"~ */ GOTO 6
  IF ~~ THEN REPLY #39226 /* ~"Never mind, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.11
  SAY #39227 /* ~Yves shakes her head. "But Marissa's is an interesting tale. Would you hear it?"~ */
  IF ~~ THEN REPLY #39228 /* ~"Yes, go ahead."~ */ GOTO 11
  IF ~~ THEN REPLY #39229 /* ~"Not right now. I have another question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39230 /* ~"Not now. Farewell, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.10 4.13
  SAY #39231 /* ~Yves shakes her head. "Speak with Nenny... she is forever pacing about, observing everything intently."~ */
  IF ~~ THEN REPLY #39232 /* ~"I have another question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39233 /* ~"Farewell, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.12
  SAY #39234 /* ~"The tale of Ravel Puzzlewell, frightener of children, begins and ends with a question: 'What can change the nature of a man?'"~ */
  IF ~~ THEN REPLY #39235 /* ~"Go on..."~ */ GOTO 15
  IF ~~ THEN REPLY #39236 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39241 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.9
  SAY #39242 /* ~"Once upon a time, an elderly man from the Clerk's Ward vanished, and his body could not be found. To conceal it, the murderer buried him beneath another body in the cemetery. A diviner told of where the body could be found, and so they dug, and uncovered a body, but not that of the elderly man. They were confounded. They were forced to release the man, and it was not until they continued to dig to re-bury the older man's body that they found the second body."

"Sometimes one must dig deeply to find the truth."~ */
  IF ~~ THEN REPLY #39243 /* ~"I... see. I have another question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39244 /* ~"I understand... I'll keep asking around. Farewell, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.0 14.0
  SAY #39245 /* ~"Once upon a time, a girl came to an oracle who was rumored to know many things and asked of it a boon. Her life was in need of direction, so she asked this oracle as to what would give her purpose..."~ */
  IF ~~ THEN REPLY #39246 /* ~"Go on..."~ */ GOTO 10
  IF ~~ THEN REPLY #39247 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39248 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #39249 /* ~"Now, the oracle was not evil, but it was vague and tended towards drink, which caused it to be obscure in many matters of judgment and focus. Its only answer to the girl's question was that within one story that she would hear in her lifetime was the truth that she sought. The girl went off and collected stories, which she chases to this day, not knowing which of the thousands hold the truth."

"Such is the danger of a foolish question and the wisdom of an unspoken one."~ */
  IF ~~ THEN REPLY #39250 /* ~"I had another question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39251 /* ~"That's all I wished to know, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.0
  SAY #39252 /* ~"Once upon a time in a world of heroes and a time of petty, childish gods, there were three sisters. Cursed with a hideous appearance, they were considered demons by the people of the land and forever shunned. One missed her sisters terribly, yet left that world with its shame behind... but exchanged the pettiness of a pantheon for the pettiness of self."~ */
  IF ~~ THEN REPLY #39253 /* ~"I had another question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39254 /* ~"That's all I wished to know, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.1
  SAY #39255 /* ~"I collect tales, and trade them with others who've tales of their own."~ */
  IF ~~ THEN REPLY #39256 /* ~"May we trade tales?"~ */ GOTO 19
  IF ~~ THEN REPLY #39257 /* ~"I had another question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39258 /* ~"That's all I wished to know, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 4.2
  SAY #39259 /* ~"That is part of Mistress Grace's story, which is not mine to tell. She has said that when she nears the end of her years, she shall tell me... and only if I pledge never to share it with another."~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #39260 /* ~"She hopes that she will never need to tell me her tale, for she hopes I will find my own story before that time and leave this place. I think she fears my life will be squandered in searching for this tale, and not acting upon what I already know." Yves sighs softly. "But it cannot be helped."~ */
  IF ~~ THEN REPLY #39261 /* ~"Your own story?"~ */ GOTO 9
  IF ~~ THEN REPLY #39262 /* ~"I had another question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39263 /* ~"That's all I wished to know, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.0
  SAY #39264 /* ~"Many were the times she posed this riddle to those who approached her, those who sought to glean from her the strange magics that she alone seemed to possess. All attempted to answer her query, but to no avail... and they found the price of their wrong answer to be some horrible fate, always more terrible than the last victim's. To recount their various torments would be to speak of things that nightmares are woven from."~ */
  IF ~~ THEN REPLY #39265 /* ~"Go on..."~ */ GOTO 16
  IF ~~ THEN REPLY #39266 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39267 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #39268 /* ~"The tale strikes me in this way: Ravel herself knew not the answer to this question, but she lusted for such an answer. Only the *why* of the matter remained in question. Why did the nature of a man matter to one of the Gray Sisters, especially to one of such power as Ravel?"~ */
  IF ~~ THEN REPLY #39269 /* ~"Go on..."~ */ GOTO 17
  IF ~~ THEN REPLY #39270 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39271 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #39272 /* ~"It is said that she put the question to the Lady of Pain; not directly, but shouted it to Sigil itself, daring for the Lady to answer. When no reply was forthcoming, she wove terrible magics that threatened to open the Cage and let the fury of the planes roll in like a wave."~ */
  IF ~~ THEN REPLY #39273 /* ~"Go on..."~ */ GOTO 18
  IF ~~ THEN REPLY #39274 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39275 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #39276 /* ~"She received no answer other than banishment. To this day, no one knows the answer to Ravel's question... and now there is no one to petition, for Ravel herself is gone, lost to the planes."~ */
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #39277 /* ~"I had another question..."~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ JOURNAL #66790 /* ~After telling me a tale of Ravel, Yves suggested that Ecco - the silent prostitute - might know something more of her... but that first I'd have to get Ecco to speak to me.~ */ GOTO 79
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #39278 /* ~"That's all I wished to know, Yves. Farewell."~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ JOURNAL #66790 /* ~After telling me a tale of Ravel, Yves suggested that Ecco - the silent prostitute - might know something more of her... but that first I'd have to get Ecco to speak to me.~ */ GOTO 79
  IF ~  GlobalGT("Ecco_Speak","GLOBAL",0)
GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #66786 /* ~"I had another question..."~ */ JOURNAL #66790 /* ~After telling me a tale of Ravel, Yves suggested that Ecco - the silent prostitute - might know something more of her... but that first I'd have to get Ecco to speak to me.~ */ GOTO 79
  IF ~  GlobalGT("Ecco_Speak","GLOBAL",0)
GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #66787 /* ~"That's all I wished to know, Yves. Farewell."~ */ JOURNAL #66790 /* ~After telling me a tale of Ravel, Yves suggested that Ecco - the silent prostitute - might know something more of her... but that first I'd have to get Ecco to speak to me.~ */ GOTO 79
  IF ~  Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #66788 /* ~"I had another question..."~ */ JOURNAL #66791 /* ~After telling me a tale of Ravel, Yves suggested that Ecco might know something more of her.~ */ GOTO 80
  IF ~  Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #66789 /* ~"That's all I wished to know, Yves. Farewell."~ */ JOURNAL #66791 /* ~After telling me a tale of Ravel, Yves suggested that Ecco might know something more of her.~ */ GOTO 80
END

IF ~~ THEN BEGIN 19 // from: 2.0 3.0 4.5 12.0 22.0 29.0 39.0 42.0 44.0 47.0 50.0 58.0 60.0 62.0 63.4 65.0 67.0 78.0
  SAY #39279 /* ~Yves nods. "I would like that very much, yes."~ */
  IF ~  Global("Yves_Story_01","GLOBAL",0)
~ THEN REPLY #39280 /* ~Tell her the story of your waking up in the Mortuary.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 21
  IF ~  Global("Yves_Story_02","GLOBAL",0)
!NearbyDialog("Dnordom")
~ THEN REPLY #39281 /* ~Tell her the story of the Alley of Lingering Sighs.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 23
  IF ~  Global("Yves_Story_02","GLOBAL",0)
NearbyDialog("Dnordom")
~ THEN REPLY #67899 /* ~Tell her the story of the Alley of Lingering Sighs.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 81
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
Global("Yves_Story_03","GLOBAL",0)
~ THEN REPLY #39282 /* ~Tell her the story of the Silent King.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 31
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
Global("Yves_Story_03","GLOBAL",0)
~ THEN REPLY #39283 /* ~Tell her the story of the Silent King.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 31
  IF ~  GlobalGT("Dream","GLOBAL",0)
Global("Yves_Story_13","GLOBAL",0)
~ THEN REPLY #39284 /* ~Tell her the story of the Dreambuilder.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 40
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Yves_Story_04","GLOBAL",0)
~ THEN REPLY #39285 /* ~Tell her the story of Reekwind's curse.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 43
  IF ~  Global("Story_Reekwind_Alley","GLOBAL",1)
Global("Yves_Story_05","GLOBAL",0)
~ THEN REPLY #39286 /* ~Tell her the story of the Alley of Dangerous Angles.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 45
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",1)
Global("Yves_Story_06","GLOBAL",0)
~ THEN REPLY #39287 /* ~Tell her the story of Pharod.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 48
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
Global("Yves_Story_07","GLOBAL",0)
~ THEN REPLY #39288 /* ~Tell her the story of Ignus.~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 51
  IF ~  NumInPartyGT(0)
~ THEN REPLY #39289 /* ~Ask one of your companions if they have a story to tell.~ */ GOTO 20
  IF ~~ THEN REPLY #39290 /* ~"Actually, let me ask you a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39291 /* ~"We'll do it another time, then. Farewell, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.10
  SAY #39292 /* ~Yves awaits your story patiently.~ */
  IF ~  NearbyDialog("DMorte")
Global("Yves_Story_08","GLOBAL",0)
~ THEN REPLY #39293 /* ~"Morte... do you have a story to trade?"~ */ EXTERN ~DMORTE~ 408
  IF ~  NearbyDialog("DAnnah")
Global("Yves_Story_09","GLOBAL",0)
~ THEN REPLY #39294 /* ~"Annah... do you have a story to trade?"~ */ EXTERN ~DANNAH~ 195
  IF ~  NearbyDialog("DDakkon")
Global("Yves_Story_10","GLOBAL",0)
~ THEN REPLY #39295 /* ~"Dak'kon... do you have a story to trade?"~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ EXTERN ~DDAKKON~ 122
  IF ~  NearbyDialog("DGrace")
InParty("Grace")
Global("Yves_Story_11","GLOBAL",0)
~ THEN REPLY #39296 /* ~"Fall-from-Grace... do you have a story to trade?"~ */ DO ~SetGlobal("Yves_Story_11","GLOBAL",1)
~ EXTERN ~DGRACE~ 140
  IF ~  NearbyDialog("DNordom")
Global("Yves_Story_12","GLOBAL",0)
~ THEN REPLY #39297 /* ~"Nordom: if you have a story to trade, please share it with Yves."~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ EXTERN ~DNORDOM~ 10
  IF ~~ THEN REPLY #39298 /* ~"Actually, Yves, let me ask you a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39299 /* ~"We'll do it another time. Farewell, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0
  SAY #39300 /* ~Yves leans forward as you tell the tale of your wakening in the Dustmen's Mortuary... she seems to devour your every word. As you finish, she smiles at you. "I shall remember this tale. I, too, will tell a tell of the Dustmen - 'Chapters of Dust.'"~ */
  IF ~~ THEN REPLY #39301 /* ~"Go on..."~ */ DO ~SetGlobal("Yves_Story_01","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 22
  IF ~~ THEN REPLY #39302 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39303 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 66.0
  SAY #39304 /* ~"There are chapters in the dead-book, the massive tome which the Dustmen keep that records the passing of all that lives into the Eternal Boundary. In this book, there are chapters that are naught but dust, and it is believed that the names therein are lost souls who cannot die, but must suffer life eternally until history itself dies and grants them release."~ */
  IF ~~ THEN REPLY #39305 /* ~"I've another tale to share with you."~ */ GOTO 19
  IF ~~ THEN REPLY #39306 /* ~"I had a question for you, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39307 /* ~"I'll take my leave, now. Farewell, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.1
  SAY #39308 /* ~Yves leans forward as you tell the tale of the Alley giving birth... she seems to devour your every word. As you finish, she smiles at you. "I shall remember this tale. And now, I have one for you. Before I begin I must ask: do you know what a modron is?"~ */
  IF ~~ THEN REPLY #39309 /* ~"Yes."~ */ GOTO 24
  IF ~~ THEN REPLY #39310 /* ~"No..."~ */ GOTO 30
END

IF ~~ THEN BEGIN 24 // from: 23.0 30.0
  SAY #39311 /* ~"Then I shall tell you the tale of 'The Clock and the Quadrone.'"~ */
  IF ~~ THEN REPLY #39312 /* ~"Go on..."~ */ DO ~SetGlobal("Yves_Story_02","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 25
  IF ~~ THEN REPLY #39313 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39314 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 66.1 81.0
  SAY #39315 /* ~"Once upon a time, there existed a modron. It was newly-created, its logic fresh and untested, and it had come to Sigil, following the commands of its modron superiors." ~ */
  IF ~~ THEN REPLY #39316 /* ~"Go on..."~ */ GOTO 26
  IF ~~ THEN REPLY #39317 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39318 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #39319 /* ~"It knew of nothing but commands and dictates, of obedience and passing along the orders of its superiors. For you see, modrons are only aware of the commands of their immediate superiors - they have no grasp of a higher authority. Until this one."~ */
  IF ~~ THEN REPLY #39320 /* ~"Go on..."~ */ GOTO 27
  IF ~~ THEN REPLY #39321 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39322 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #39328 /* ~"One day it came upon a small shop, within which there was a small clock that could no longer tell time. It was cracked along the edges, the wheels of its hands broken. The modron immediately set itself to work at getting the parts to fix the broken clock."~ */
  IF ~~ THEN REPLY #39329 /* ~"Go on..."~ */ GOTO 28
  IF ~~ THEN REPLY #39330 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39331 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #39332 /* ~"It made a new wooden housing for the clock's parts, replaced the bent springs, carefully filed and oiled the clockwork machinery, and carved new hands from the sparse metal available to it. The newly-repaired clock's precise ticking reminded it of the great gears of Mechanus, and it comforted it as much as any thing may comfort a modron."~ */
  IF ~~ THEN REPLY #39333 /* ~"Go on..."~ */ GOTO 29
  IF ~~ THEN REPLY #39334 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39335 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #39336 /* ~"And what the modron never came to understand was that it truly *loved* this clock that it had worked on, and for reasons it could not explain, elected to remain in Sigil and be with the clock for the rest of its years."~ */
  IF ~~ THEN REPLY #39337 /* ~"I've another tale to share with you."~ */ GOTO 19
  IF ~~ THEN REPLY #39338 /* ~"I had a question for you, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39339 /* ~"I'll take my leave, now. Farewell, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.1
  SAY #39340 /* ~"Modrons are creatures of total law, almost more machinery than living things. There are many different sorts of modron, but all have their place in a very rigid, carefully organized hierarchy. So dedicated are they to this system that they cannot communicate with or even consider the existence of modrons who are not their immediate superiors or inferiors."~ */
  IF ~~ THEN REPLY #39341 /* ~"I understand, now."~ */ GOTO 24
  IF ~~ THEN REPLY #39342 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39343 /* ~"I'll the tale another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 19.3 19.4
  SAY #39344 /* ~Yves leans forward as you tell the tale of a hidden nation of undead, ruled by a corpse who hasn't spoken in a thousand years... she seems to devour your every word. As you finish, she smiles at you. "I shall remember this tale. And now, I have one for you - 'The Petitioner at the Gate.'"~ */
  IF ~~ THEN REPLY #39345 /* ~"Go on..."~ */ DO ~SetGlobal("Yves_Story_03","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 32
  IF ~~ THEN REPLY #39346 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39347 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0 66.2
  SAY #39348 /* ~"It was far after peak when the distant pounding was heard at the gates of the Prison." ~ */
  IF ~~ THEN REPLY #39349 /* ~"Go on..."~ */ GOTO 33
  IF ~~ THEN REPLY #39350 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39351 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #39352 /* ~"Carus - the oldest Mercykiller known to the faction - dragged himself from his post, making his way down the hall to the great gates that separated the punished from the outside world. The pounding did not fade as he reached the gate and spoke to it."~ */
  IF ~~ THEN REPLY #39353 /* ~"Go on..."~ */ GOTO 34
  IF ~~ THEN REPLY #39354 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39355 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #39356 /* ~"He called out and received no answer. He opened the gate, far from feeling caution, but a strange, compelling sensation."~ */
  IF ~~ THEN REPLY #39357 /* ~"Go on..."~ */ GOTO 35
  IF ~~ THEN REPLY #39358 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39359 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #39360 /* ~"A haggard figure was on bent knees just beyond the door. Her hands were bloody from where they had been pounding against the gate, and her breath came in labored gasps. As the flickering light from the interior prison chamber poured across the cobbles, she glanced up at the Mercykiller who stood framed in the doorway, and began to sob with relief."~ */
  IF ~~ THEN REPLY #39361 /* ~"Go on..."~ */ GOTO 36
  IF ~~ THEN REPLY #39362 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39363 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #39364 /* ~"He felt himself mirrored in all but his gender as he stared at the woman, and he was stirred by her presence. Carus found himself unsure of what to say, so he simply waited for the woman to provide an explanation."~ */
  IF ~~ THEN REPLY #39365 /* ~"Go on..."~ */ GOTO 37
  IF ~~ THEN REPLY #39366 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39367 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #39368 /* ~"She did. It was a simple statement, but of utmost importance, and it made Carus... whose knees ached painfully with every movement... bend down and help the woman to her feet. He brought her in from the outside, guiding her gently into the passage beyond."~ */
  IF ~~ THEN REPLY #39369 /* ~"Go on..."~ */ GOTO 38
  IF ~~ THEN REPLY #39370 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39371 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #39372 /* ~"She had said that an injustice had been done. And that was all that Carus needed to hear."~ */
  IF ~~ THEN REPLY #39373 /* ~"Go on..."~ */ GOTO 39
  IF ~~ THEN REPLY #39374 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39375 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #39376 /* ~"In the end, it came to pass that she could not fulfill her duty as a Fury, for a man guilty of a blood crime had died unpunished. She begged Carus and the Mercykillers for aid... and so they executed her. She had failed in her charge."~ */
  IF ~~ THEN REPLY #39377 /* ~"I've another tale to share with you."~ */ GOTO 19
  IF ~~ THEN REPLY #39378 /* ~"I had a question for you, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39379 /* ~"I'll take my leave, now. Farewell, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 19.5
  SAY #39380 /* ~Yves leans forward as you tell the tale of a man who lost his ability to dream, and commissioned the construction of a device that would allow him to dream once more... she seems to devour your every word. As you finish, she smiles at you. "I shall remember this tale. And now, I have one for you - 'The Beekeeper's Tale.'"~ */
  IF ~~ THEN REPLY #39597 /* ~"Go on..."~ */ DO ~SetGlobal("Yves_Story_13","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 41
  IF ~~ THEN REPLY #39598 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39599 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0 66.3
  SAY #39529 /* ~"Once upon a time, a man came onto a field of hives. Upon this field he heard thousands of bees, but there was not a single bee to be seen. Amongst the hives walked a beekeeper, who was extracting the honeycomb from the apparently empty hives. Yet despite the lack of insects, the drone continued; the man was mystified."~ */
  IF ~~ THEN REPLY #39600 /* ~"Go on..."~ */ GOTO 42
  IF ~~ THEN REPLY #39601 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39602 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #39530 /* ~"He made to speak with the beekeeper, who lifted his hood to reveal a creature made entirely of bees. A mouth-shaped depression formed in the mass of insects which made up the thing's face; the depression moved as the creature spoke, but the drone was such that its words could not be understood. The man died at that moment, trying to understand what it was that the beekeeper said."~ */
  IF ~~ THEN REPLY #39603 /* ~"I've another tale to share with you."~ */ GOTO 19
  IF ~~ THEN REPLY #39604 /* ~"I had a question for you, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39605 /* ~"I'll take my leave, now. Farewell, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 19.6
  SAY #39531 /* ~Yves leans forward as you tell the tale of Reekwind's odiferous curse... she seems to devour your every word. As you finish, she smiles at you. "I shall remember this tale. And now, I have one for you - 'The Gilded Tale.'"~ */
  IF ~~ THEN REPLY #39606 /* ~"Go on..."~ */ DO ~SetGlobal("Yves_Story_04","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 44
  IF ~~ THEN REPLY #39607 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39608 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0 66.4
  SAY #39532 /* ~"Upon the Plane of Ysgard is the Gilded Hall, where those Sensates that seek the pleasure of gullet and loin can be found. They indulge these passions in earnest, never realizing that the doors of the hall never open and that there is no clear path back to the Civic Festhall. They are the unwanted Sensates, the ones that do not truly believe in the faction, but instead seek only pleasure for pleasure's sake. Are prisoners who do not realize they are such truly prisoners?"~ */
  IF ~~ THEN REPLY #39609 /* ~"I've another tale to share with you."~ */ GOTO 19
  IF ~~ THEN REPLY #39610 /* ~"I had a question for you, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39611 /* ~"I'll take my leave, now. Farewell, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 19.7
  SAY #39533 /* ~Yves leans forward as you tell the tale of the Alley of Dangerous Angles and how it came to be... she seems to devour your every word. As you finish, she smiles at you. "I shall remember this tale. And now, I have one for you - 'The Lady's Suitor.'"~ */
  IF ~~ THEN REPLY #39612 /* ~"Go on..."~ */ DO ~SetGlobal("Yves_Story_05","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 46
  IF ~~ THEN REPLY #39613 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39614 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0 66.5
  SAY #39534 /* ~"The tale concerns a suitor of the Lady of Pain, one of many over the years. He was a young man who was obsessed with the Mistress of Sigil. He saw her everywhere, in every corner of her city. He would hear the rustling of her robes, the scrape of her blades, and grew infatuated beyond all reason. He hoped that if he worshipped her, that he would at last be able to see her... and so worship her he did."~ */
  IF ~~ THEN REPLY #39615 /* ~"Go on..."~ */ GOTO 47
  IF ~~ THEN REPLY #39616 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39617 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #39535 /* ~"He was found dead on the blood-soaked steps of his own home, grievous stab wounds covering the whole of his body... but his eyes were open wide, and upon his lips was a triumphant smile."~ */
  IF ~~ THEN REPLY #39618 /* ~"I've another tale to share with you."~ */ GOTO 19
  IF ~~ THEN REPLY #39619 /* ~"I had a question for you, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39620 /* ~"I'll take my leave, now. Farewell, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 19.8
  SAY #39536 /* ~Yves leans forward as you tell the tale of the fall of Pharod... she seems to devour your every word. As you finish, she smiles at you. "I shall remember this tale. And now, I have one for you..."~ */
  IF ~~ THEN REPLY #39621 /* ~"Go on..."~ */ DO ~SetGlobal("Yves_Story_06","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 49
  IF ~~ THEN REPLY #39622 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39623 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0 66.6
  SAY #39537 /* ~"Once came a man who had experienced the most beautiful thing in the multiverse. It was his intention to place the experience within one of the Civic Festhall's sensory stones - magical devices which held feelings and memories for an eternity, leaving them for others to partake of."~ */
  IF ~~ THEN REPLY #39624 /* ~"Go on..."~ */ GOTO 50
  IF ~~ THEN REPLY #39625 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39626 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #39538 /* ~"But he thought about it: wouldn't its being shared dilute the experience? So he held it to himself, precious thing that it was, and aged with the memory. But as he aged, the memory became tarnished and beaten, and he could no longer recall the glory of the experience."~ */
  IF ~~ THEN REPLY #39627 /* ~"I've another tale to share with you."~ */ GOTO 19
  IF ~~ THEN REPLY #39628 /* ~"I had a question for you, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39629 /* ~"I'll take my leave, now. Farewell, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 19.9
  SAY #39539 /* ~Yves leans forward as you tell the tale of Ignus and the Art that burned within him... she seems to devour your every word. As you finish, she smiles at you. "I shall remember this tale. And now, I have one for you - 'The Execution.'"~ */
  IF ~~ THEN REPLY #39630 /* ~"Go on..."~ */ DO ~SetGlobal("Yves_Story_07","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 52
  IF ~~ THEN REPLY #39631 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39632 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0 66.7
  SAY #39540 /* ~"Once, a murderer roamed Sigil's streets, a black-hearted man by the name of Kossacs. He had been blessed by his Abyssal mother so that no one could strike him with an intent to harm or they themselves would die. He reveled in his blessing, using it to start fights and murder anyone who crossed his path."~ */
  IF ~~ THEN REPLY #39633 /* ~"Go on..."~ */ GOTO 53
  IF ~~ THEN REPLY #39634 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39635 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #39541 /* ~"During one of his murderous rages, he was captured by the Harmonium with nets and brought before the Guvners. The trial was short, final, yet Kossacs laughed at the proceedings, knowing that no one among them could harm him without dying horribly. At the final day of his trial, he was proclaimed guilty and sentenced to death."~ */
  IF ~~ THEN REPLY #39636 /* ~"Go on..."~ */ GOTO 76
  IF ~~ THEN REPLY #39637 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39638 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 77.0
  SAY #39542 /* ~"'Then I spit on your cowardice!' Kossacs laughed, feeling for the chalice in the darkness, then hurling it at the wall and shattering it. Its poison dripped from the walls and dried, until it was no more. 'Come then - you will have to try and kill me now.'"~ */
  IF ~~ THEN REPLY #39639 /* ~"Go on..."~ */ GOTO 78
  IF ~~ THEN REPLY #39640 /* ~"I had a question for you, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39641 /* ~"I'll take my leave, now. Farewell, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY #39543 /* ~Yves smiles. "An interesting tale, Morte. And now I've one for you and your companion...'The Fiend's Game.'"~ */
  IF ~~ THEN REPLY #39642 /* ~"Go on..."~ */ DO ~SetGlobal("Yves_Story_08","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 56
  IF ~~ THEN REPLY #39643 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39644 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #39544 /* ~"A fiend sometimes wandered the wilderness of a certain Prime world in the guise of a friendly old man. One day, he came upon some hunters in the wood."

"'What are you doing?' The fiend asked. The hunters told him, and the fiend nodded. 'I have never been on a hunt before.'"~ */
  IF ~~ THEN REPLY #39645 /* ~"Go on..."~ */ GOTO 57
  IF ~~ THEN REPLY #39646 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39647 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #39545 /* ~"The hunters invited the old man to come along, and the group eventually came upon a glade where several deer were grazing. The hunters carried crossbows, but did not fire, and the fiend asked them why."~ */
  IF ~~ THEN REPLY #39648 /* ~"Go on..."~ */ GOTO 58
  IF ~~ THEN REPLY #39649 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39650 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #39546 /* ~"'They are unarmed,' the hunters chuckled, patting their crossbows. 'We hunt nothing that does not have the ability to defend itself. After all, where is the sport in that?'"

"The fiend nodded at this, and promptly gated in three of his fellows. The hunters led them on a merry chase, but eventually they were caught and eaten."~ */
  IF ~~ THEN REPLY #39651 /* ~"I've another tale to share with you."~ */ GOTO 19
  IF ~~ THEN REPLY #39652 /* ~"I had a question for you, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39653 /* ~"I'll take my leave, now. Farewell, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from:
  SAY #39547 /* ~Yves smiles. "A fine tale, Nordom. And now I've one for you and your companion... 'Flowers and Sensates.'"~ */
  IF ~~ THEN REPLY #39654 /* ~"Go on..."~ */ DO ~SetGlobal("Yves_Story_12","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 60
  IF ~~ THEN REPLY #39655 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39656 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.0 66.10
  SAY #39548 /* ~"There was a man who read much of flowers - essays, treatises, biological texts, poetry - and as such considered himself well-learned in the way of flowers. One day, he came across a half-blind gardener who tended the Sensate gardens. Who was blind in the way of flowers?"~ */
  IF ~~ THEN REPLY #39657 /* ~"I've another tale to share with you."~ */ GOTO 19
  IF ~~ THEN REPLY #39658 /* ~"I had a question for you, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39659 /* ~"I'll take my leave, now. Farewell, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from:
  SAY #39549 /* ~Yves smiles. "Fascinating, Dak'kon. Let me share with you and your companion another version of your tale that I have heard..."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 123
END

IF ~~ THEN BEGIN 62 // from: 66.9
  SAY #39550 /* ~Yves goes on to tell a different version of Dak'kon's tale, in which Ach'ali was driven from the githzerai city of Shra'kt'lor for her constant, useless prattling...

"One day, she encountered a slaadi on his way to the spawning stone. She hastily erected a wall of chaos matter, which even the ravenous slaadi found difficult to break down. Hungrily, it waited, and spoke to her through the wall. She asked it questions, and as she became more absorbed in her pointless queries and the slaadi's answers, her own wall decayed and collapsed upon her... and thus she drowned in the matter of Limbo."~ */
  IF ~~ THEN REPLY #39660 /* ~"I've another tale to share with you."~ */ GOTO 19
  IF ~~ THEN REPLY #39661 /* ~"I had a question for you, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39662 /* ~"I'll take my leave, now. Farewell, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from:
  SAY #39551 /* ~Yves smiles at Annah. "But I would very much like to hear your story..."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39663 /* ~"Just tell the story already, Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 195
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39664 /* ~"Please share your story, Annah..."~ */ EXTERN ~DANNAH~ 196
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #39665 /* ~"Just tell the story already, Annah."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DMORTE~ 420
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #39666 /* ~"Please share your story, Annah..."~ */ EXTERN ~DMORTE~ 420
  IF ~~ THEN REPLY #39667 /* ~"I've another tale to share with you, Yves."~ */ GOTO 19
  IF ~~ THEN REPLY #39668 /* ~"I had a question for you, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39669 /* ~"Maybe another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from:
  SAY #39552 /* ~Yves smiles. "That was a wonderful, tale Annah; you should never hesitate to share it. Now I've one for you and your companion - 'The Parched Land.'"~ */
  IF ~~ THEN REPLY #39670 /* ~"Go on..."~ */ DO ~SetGlobal("Yves_Story_09","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 65
  IF ~~ THEN REPLY #39671 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39672 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 64.0 66.8
  SAY #39553 /* ~"Once, a large village was struck by a terrible drought. A farmer journeyed to the Worshipping Stone, and again implored it as to the cause of the drought. He asked the Stone why it did nothing when the fields were parched and dying, why the animals and the people suffered while the Stone did not a thing. 'Have we not given enough offerings?' the farmer asked, begging almost upon his hands and knees. But the Stone did not respond; it merely sat, and cast its shadow."~ */
  IF ~~ THEN REPLY #39673 /* ~"I've another tale to share with you."~ */ GOTO 19
  IF ~~ THEN REPLY #39674 /* ~"I had a question for you, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39675 /* ~"I'll take my leave, now. Farewell, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 4.6
  SAY #39554 /* ~Yves nods. "Which?"~ */
  IF ~  Global("Yves_Story_01","GLOBAL",1)
~ THEN REPLY #39676 /* ~"The Chapters of Dust."~ */ GOTO 22
  IF ~  Global("Yves_Story_02","GLOBAL",1)
~ THEN REPLY #39677 /* ~"The Clock and the Quadrone."~ */ GOTO 25
  IF ~  Global("Yves_Story_03","GLOBAL",1)
~ THEN REPLY #39678 /* ~"The Petitioner at the Gate."~ */ GOTO 32
  IF ~  Global("Yves_Story_13","GLOBAL",1)
~ THEN REPLY #39679 /* ~"The Beekeeper's Tale."~ */ GOTO 41
  IF ~  Global("Yves_Story_04","GLOBAL",1)
~ THEN REPLY #39680 /* ~"The Gilded Tale."~ */ GOTO 44
  IF ~  Global("Yves_Story_05","GLOBAL",1)
~ THEN REPLY #39681 /* ~"The Lady's Suitor."~ */ GOTO 46
  IF ~  Global("Yves_Story_06","GLOBAL",1)
~ THEN REPLY #39682 /* ~"The tale about the man who refused to share his experience."~ */ GOTO 49
  IF ~  Global("Yves_Story_07","GLOBAL",1)
~ THEN REPLY #39683 /* ~"The Execution."~ */ GOTO 52
  IF ~  Global("Yves_Story_09","GLOBAL",1)
~ THEN REPLY #39684 /* ~"The Parched Land."~ */ GOTO 65
  IF ~  Global("Yves_Story_10","GLOBAL",1)
~ THEN REPLY #39685 /* ~"Your version of 'Ach'ali Drowning.'"~ */ GOTO 62
  IF ~  Global("Yves_Story_12","GLOBAL",1)
~ THEN REPLY #39686 /* ~"Flowers and Sensates."~ */ GOTO 60
  IF ~  Global("Iannis_Confessed","GLOBAL",2)
~ THEN REPLY #39687 /* ~"The tale of the father, the daughter, and her lover."~ */ GOTO 72
  IF ~~ THEN REPLY #39688 /* ~"Actually, I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39689 /* ~"Never mind, Yves. Farewell."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 71 even though they appear after this state */
~  GlobalGT("Yves","GLOBAL",0)
~ THEN BEGIN 67 // from:
  SAY #39555 /* ~Yves smiles pleasantly at you. "Greetings, again. Have you come to trade tales?"~ */
  IF ~~ THEN REPLY #39690 /* ~"Yes, I have."~ */ GOTO 19
  IF ~~ THEN REPLY #39691 /* ~"No, but I had some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #39692 /* ~"Actually, I was just passing by. Farewell, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 4.3
  SAY #39556 /* ~Yves nods. "Yes, but she and I no longer speak, just as I shall speak no more of her."~ */
  IF ~~ THEN REPLY #39693 /* ~"I had another question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39694 /* ~"Farewell then, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 4.4
  SAY #39557 /* ~Yves nods, smiling. "I have, thank you."~ */
  IF ~~ THEN REPLY #39695 /* ~"My pleasure. I had another question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39696 /* ~"Of course. Farewell, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 4.7 4.8 79.0
  SAY #39558 /* ~"Ecco?" Yves frowns, thinking. "I once heard a tale of a girl who knew the word that, if spoken, would undo the multiverse. Perhaps this is Ecco. Ask Dolora, though... I understand that she sometimes meets with one who knew Ecco before she stopped speaking."~ */
  IF ~~ THEN REPLY #39697 /* ~"I had another question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39698 /* ~"That's all I wished to know, Yves. Farewell."~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Yves","GLOBAL",0)
GlobalGT("Yvana","GLOBAL",1)
Global("Yves_Shared","AR0605",1)
Global("Iannis_Confessed","GLOBAL",1)
~ THEN BEGIN 71 // from:
  SAY #39559 /* ~Yves smiles pleasantly at you. "Greetings, again. I have come across a tale you might wish to hear. Shall I share it with you?"~ */
  IF ~~ THEN REPLY #39699 /* ~"Yes, please."~ */ DO ~SetGlobal("Iannis_Confessed","GLOBAL",2)
AddexperienceParty(3000)
~ GOTO 72
  IF ~~ THEN REPLY #39700 /* ~"Not just now. I had some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #39701 /* ~"I was only passing by, Yves; I'll hear it later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 66.11 71.0
  SAY #39560 /* ~"There was a man, a prestigious man, that for all his wealth and status was terribly unhappy. His daughter had perished, and what little was left of his life was shadowed by the gloom of her passing."~ */
  IF ~~ THEN REPLY #39702 /* ~"Go on..."~ */ GOTO 73
  IF ~~ THEN REPLY #39703 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39704 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #39561 /* ~"So it happened that a former lover of the daughter came to him and spoke of her with meaning and feeling, restoring the light to his heart. And in so doing, both found two wholly different things, each of which would prove precious to them in separate ways."~ */
  IF ~~ THEN REPLY #39705 /* ~"Go on..."~ */ GOTO 74
  IF ~~ THEN REPLY #39706 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39707 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #39562 /* ~"One found the spark of life returned to him, the gloom chased from his eyes and the corners of his mind."

"And the man, the lover, the petitioner found something else that was to prove more precious to him on his journey - regret."~ */
  IF ~~ THEN REPLY #39708 /* ~"Go on..."~ */ GOTO 75
  IF ~~ THEN REPLY #39709 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #39710 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #50722 /* ~"For it is regret that can change the nature of a man, it is said, though perhaps only the Gray Sisters know it for certain."

Yves nods at you, smiling. "I know not the meaning of this tale, but perhaps it will be of some use to you, in the future."~ */
  IF ~~ THEN REPLY #39711 /* ~"Thanks. I had a question for you, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39712 /* ~"Thanks, Yves. I'll take my leave, now; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 53.0
  SAY #50723 /* ~"Kossacs' sentence proclaimed by the Guvners was this: 'Confinement for thrice-thirty days, during which time you shall give up your life, be declared dead, and your body removed when all signs of life cease.' Kossacs laughed and dared any of them to try and harm him, yet the court was silent."~ */
  IF ~~ THEN REPLY #50724 /* ~"Go on..."~ */ GOTO 77
  IF ~~ THEN REPLY #50725 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #50726 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #50727 /* ~"The Mercykillers lead Kossacs to their prison and locked him in a dark, empty cell. There was no cot, no lights, and the only door was a steel grate in the ceiling."

"As they lowered him into the cell, the Mercykiller told him - in the corner of your cell will you find a chalice. It holds poison. Your death will be swift."

"'Aren't you going to execute me?' Kossacs snarled at the guard."

"'No one in Sigil shall lay a hand on you with intent to harm,' came the Mercykiller's reply."~ */
  IF ~~ THEN REPLY #50729 /* ~"Go on..."~ */ GOTO 54
  IF ~~ THEN REPLY #50728 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #50730 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 54.0
  SAY #50731 /* ~"But there was no response from the grate in the ceiling. It was then that Kossacs noticed the cell had no cot. No lights. And no food and water. All that remained was the shattered chalice, the poison gone. And for the first time, Kossacs knew the icy touch of death's approach."

"In twice-thirty days, the grate opened, and Kossacs' body, now cold, was taken from the cell. It had given up its life, and the execution had been carried out."~ */
  IF ~~ THEN REPLY #50732 /* ~"I've another tale to share with you."~ */ GOTO 19
  IF ~~ THEN REPLY #50733 /* ~"I had a question for you, Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #50734 /* ~"I'll take my leave, now. Farewell, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 18.0 18.1 18.2 18.3
  SAY #66763 /* ~"Wait... there is more. Though my tale ends with Ravel's demise, there are some that claim the hag still lives. There is a silent prostitute here who once talked of such things, but she speaks no longer. If she would speak to you, she might tell you more of Ravel."~ */
  IF ~~ THEN REPLY #66764 /* ~"What else can you tell me of this silent prostitute?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_2","AR0605",1)
~ JOURNAL #66744 /* ~One of the prostitutes suggested that I ask Dolora about Ecco, the silent prostitute. She said that Dolora sometimes spoke to an old lover of Ecco's, one who knew her before she stopped speaking.~ */ GOTO 70
  IF ~~ THEN REPLY #66765 /* ~"I had another question..."~ */ GOTO 4
  IF ~~ THEN REPLY #66766 /* ~"That's all I wished to know, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 18.4 18.5
  SAY #66767 /* ~"Wait... there is more. Though my tale ends with Ravel's demise, there are some that claim the hag still lives. Ecco is one such person; ask her of Ravel, and she might tell you more of the hag."~ */
  IF ~~ THEN REPLY #66768 /* ~"I had another question..."~ */ GOTO 4
  IF ~~ THEN REPLY #66770 /* ~"That's all I wished to know, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 19.2
  SAY #67895 /* ~Yves leans forward as you tell the tale of the Alley giving birth... she seems to devour your every word. As you finish, she smiles at you, then Nordom. "I shall remember this tale. And now, I have one for you: 'The Clock and the Quadrone.'"~ */
  IF ~~ THEN REPLY #67897 /* ~"Go on..."~ */ DO ~SetGlobal("Yves_Story_02","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 25
  IF ~~ THEN REPLY #67896 /* ~"Wait... I had a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #67898 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END
