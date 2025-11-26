// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYVANA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DYVANA~

IF ~  Global("Yvana","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3003 /* ~Before you is a well-dressed, elderly woman in a gown of peach-colored and golden thread. She stands quietly, her hands folded together primly, and nods in your direction. It is then that you notice that she has no pupils - her eyes are entirely white. "Greetings, sir. I am Yvana; welcome to my galleria. Feel free to look about, spending as much time here as you like; should you have questions regarding any of the pieces, do not hesitate to ask me of them."~ */
  IF ~~ THEN REPLY #3004 /* ~"I had some questions, Yvana..."~ */ DO ~SetGlobal("Yvana","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #42094 /* ~"Maybe I'll look around, then. Farewell."~ */ DO ~SetGlobal("Yvana","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 1 // from: 2.0 3.1 4.1 5.1 6.1 7.0 10.0 12.0 13.0 15.0 16.0 17.1 18.1 19.1 20.0 21.8 22.10 23.2 24.1 25.2 26.1 27.2 28.1 29.1 31.1 33.1 34.1 35.1 36.1 37.1 38.1 39.1 40.1 41.2 42.1 43.1 44.0 45.1 46.0 47.0 48.1
  SAY #42095 /* ~"Of course. Please, ask."~ */
  IF ~  PartyHasItem("P_Jrnl")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #65156 /* ~"Have you ever come across anything like the writing in this dodecahedron?"~ */ GOTO 47
  IF ~~ THEN REPLY #42096 /* ~"I had a question about one of the pieces..."~ */ GOTO 21
  IF ~  !NearbyDialog("DGrace")
GlobalLT("Yvana","GLOBAL",2)
~ THEN REPLY #42097 /* ~"Can you see, Yvana?"~ */ GOTO 13
  IF ~  NearbyDialog("DGrace")
GlobalLT("Yvana","GLOBAL",2)
~ THEN REPLY #42098 /* ~"Can you see, Yvana?"~ */ EXTERN ~DGRACE~ 141
  IF ~  PartyHasItem("Cube")
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42099 /* ~"Do you know what this little cube-like toy creature is?"~ */ DO ~SetGlobal("Know_Cube_Puzzle","GLOBAL",1)
~ GOTO 45
  IF ~  GlobalGT("Yves","GLOBAL",1)
GlobalLT("Yvana","GLOBAL",2)
~ THEN REPLY #42100 /* ~"You look familiar to me... do you know someone named Yves?"~ */ GOTO 3
  IF ~  Global("Yvana","GLOBAL",3)
~ THEN REPLY #42101 /* ~"Have you spoken to your daughter lately, Yvana?"~ */ GOTO 15
  IF ~~ THEN REPLY #42102 /* ~"What is this place?"~ */ GOTO 16
  IF ~~ THEN REPLY #42103 /* ~"What is of interest here?"~ */ GOTO 2
  IF ~~ THEN REPLY #42104 /* ~"Where could I find work, here?"~ */ GOTO 2
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #42105 /* ~"I wanted to ask about a specific place..."~ */ GOTO 2
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #42106 /* ~"I just needed directions..."~ */ GOTO 2
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #42107 /* ~"What do you know of Ravel Puzzlewell?"~ */ GOTO 17
  IF ~~ THEN REPLY #42108 /* ~"Never mind, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.8 1.9 1.10 1.11
  SAY #42109 /* ~"I am afraid that I do not go far from beyond the galleria, and cannot help you with this matter. You might try and ask someone else."~ */
  IF ~~ THEN REPLY #42110 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42111 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.5
  SAY #42112 /* ~"That is my daughter." For a moment, there is a hint of sadness in the milky whiteness of her eyes. "We no longer speak to one another."~ */
  IF ~~ THEN REPLY #42113 /* ~"Why is that?"~ */ GOTO 4
  IF ~~ THEN REPLY #42114 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42115 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #42116 /* ~"There is nothing to be said between us. She has gone off in pursuit of stories... all for reasons I am unaware of."~ */
  IF ~  Global("Yves","GLOBAL",2)
~ THEN REPLY #42117 /* ~"She told me a tale that might answer that question..."~ */ GOTO 5
  IF ~~ THEN REPLY #42118 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42119 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #42120 /* ~Yvana raises her eyebrows. "Oh? Tell me, would you please? I'd most appreciate it, sir..."~ */
  IF ~~ THEN REPLY #42121 /* ~Tell her Tale-Chaser's story, and of her endless quest for the tale that holds the truth she seeks.~ */ DO ~SetGlobal("Yvana","GLOBAL",2)
~ GOTO 6
  IF ~~ THEN REPLY #42122 /* ~"Another time, perhaps. I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42123 /* ~"Some other time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #42124 /* ~Yvana nods slowly. "I... had no idea. I will see her, now. I thank you, good sir, for bringing me this news of my only daughter." As she speaks, color slowly bleeds into her pale irises until her eyes are a brilliant shade of green.~ */
  IF ~~ THEN REPLY #42125 /* ~"Your eyes... can you see now, Yvana?"~ */ GOTO 7
  IF ~~ THEN REPLY #42126 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42127 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #42128 /* ~She nods, smiling.~ */
  IF ~~ THEN REPLY #42129 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42130 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.0 9.0
  SAY #42131 /* ~"One moment, sir... your voice; it is heavy with age and wounds. Would you be so kind as to permit me to touch your face?"~ */
  IF ~~ THEN REPLY #42132 /* ~"Yes, go ahead."~ */ GOTO 11
  IF ~~ THEN REPLY #42133 /* ~"No. I'd rather you didn't."~ */ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 0.1
  SAY #42134 /* ~"Wait..."~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #42135 /* ~Yvana nods. "Very well; I shall not ask you again."~ */
  IF ~~ THEN REPLY #42136 /* ~"I had some questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #42137 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0
  SAY #42138 /* ~Yvana smiles, gently running her old hands over the skin of your face. She frowns, looking slightly puzzled. "So many scars... both old and new. They seem to..." She touches the side of your throat, flushes, then pulls away. "Pardon me, sir. I was curious to see how far they went."~ */
  IF ~~ THEN REPLY #42139 /* ~"It's fine. And they're everywhere; my whole body is scarred."~ */ GOTO 12
  IF ~~ THEN REPLY #42140 /* ~"Just don't do it again, old woman."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1
  SAY #42141 /* ~Yvana nods.~ */
  IF ~~ THEN REPLY #42142 /* ~"I had some questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #42143 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.2 14.0
  SAY #42144 /* ~"I cannot see, but only because I do not wish to. In time, I will allow my vision to return so that I can re-experience the contents of my galleria with the benefit of new, fresh eyes."~ */
  IF ~~ THEN REPLY #42145 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42146 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #42147 /* ~Yvana nods, smiling. "Your friend is quite correct, sir..."~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 1.6
  SAY #42148 /* ~"We are on speaking terms once more, yes... and I have you to thank for it. It pleases me to share words with my daughter once more." Yvana smiles at you.~ */
  IF ~~ THEN REPLY #42149 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42150 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 1.7
  SAY #42151 /* ~"Why, it's my galleria of the planes." She smiles and gestures around her. "These pieces have been brought from far and wide. Some I sell, some I keep - all I display, at one time or another. Please, enjoy them... and again, should you have questions regarding any of the pieces, do not hesitate to ask me of them."~ */
  IF ~~ THEN REPLY #42152 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42153 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.12 41.0
  SAY #42154 /* ~"She is a night hag, one of the eldest Gray Sisters of the Wastes, who came to Sigil many centuries ago to pursue arcane experiments. It was believed that these experiments were against the Lady's will, and that Ravel was thus banished from Sigil, imprisoned within one of the Lady's mazes on the ethereal where her body rests to this very day..."~ */
  IF ~~ THEN REPLY #42155 /* ~"Go on..."~ */ GOTO 18
  IF ~~ THEN REPLY #42156 /* ~"Wait... I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42157 /* ~"I'll have to hear the rest another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #42158 /* ~"Ravel was said to have been a master of riddles and puzzles, but it was believed that one riddle - one question in particular - was said to have plagued the ancient night hag: 'What can change the nature of a man?'"~ */
  IF ~~ THEN REPLY #42159 /* ~"Go on..."~ */ GOTO 19
  IF ~~ THEN REPLY #42160 /* ~"Wait... I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42161 /* ~"I'll have to hear the rest another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #42162 /* ~"She issued a challenge to any who were interested: She promised to instruct any who came to her in her craft... if they could only answer the question to her satisfaction. If they could not, they consented to be her next meal. Many died coveting Ravel's teachings, and it is believed that until her final hours in Sigil, Ravel never discovered the answer to her question."~ */
  IF ~~ THEN REPLY #42163 /* ~"Go on..."~ */ GOTO 20
  IF ~~ THEN REPLY #42164 /* ~"Wait... I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42165 /* ~"I'll have to hear the rest another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #42166 /* ~"Ravel's crime was believed to be some means of trying to shatter the Cage, trying to crack open Sigil itself for some unknown reason." Yvana sighs. "This is all I know of her."~ */
  IF ~~ THEN REPLY #42167 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42168 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 1.1 23.1 24.0 25.1 26.0 27.1 28.0 29.0 31.0 33.0 44.1 48.0
  SAY #42169 /* ~"Oh? Which one? One of the paintings?"~ */
  IF ~  Global("View_Art_01","AR0608",1)
~ THEN REPLY #42170 /* ~"The Arcadian stained-glass window."~ */ GOTO 23
  IF ~  Global("View_Art_02","AR0608",1)
~ THEN REPLY #42171 /* ~"The battle-horn of Acheron."~ */ GOTO 25
  IF ~  Global("View_Art_DBirds","AR0608",1)
~ THEN REPLY #42172 /* ~"The Dark Birds of Ocanthus."~ */ DO ~SetGlobal("Know_Styx_Ice","GLOBAL",1)
~ JOURNAL #67816 /* ~Yvana, the curator of an Art Galleria in the Clerk's Ward, told me that the Dark Birds of Ocanthus she has on display are actually frozen shards of Styx-ice. Anyone mad enough to eat one would likely be affected as if they had drunk of the Styx - they would lose their every memory. Definitely a step backward for myself, though the idea might be appealing to some...~ */ GOTO 27
  IF ~  Global("View_Art_03","AR0608",1)
~ THEN REPLY #42173 /* ~"The ruby statuette."~ */ GOTO 29
  IF ~  Global("View_Art_04","AR0608",1)
~ THEN REPLY #42174 /* ~"The kyton's animate chain."~ */ GOTO 30
  IF ~  Global("View_Art_Tomb","AR0608",1)
Global("CW_Statue_Cursed","GLOBAL",0)
~ THEN REPLY #42175 /* ~"The statue of the screaming man."~ */ GOTO 32
  IF ~  Global("View_Art_Tomb","AR0608",1)
Global("CW_Statue_Cursed","GLOBAL",1)
~ THEN REPLY #66658 /* ~"The... er... 'statue' of the screaming man."~ */ GOTO 48
  IF ~~ THEN REPLY #42176 /* ~"Yes, one of the paintings..."~ */ GOTO 22
  IF ~~ THEN REPLY #42177 /* ~"Actually, let me ask about something else..."~ */ GOTO 1
  IF ~~ THEN REPLY #42178 /* ~"Never mind, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.7 34.0 35.0 36.0 37.0 38.0 39.0 40.0 41.1 42.0 43.0
  SAY #42179 /* ~"Which one, sir?"~ */
  IF ~  Global("View_Art_07","AR0608",1)
~ THEN REPLY #42180 /* ~"'Karasuthran Shoreline.'"~ */ GOTO 34
  IF ~  Global("View_Art_08","AR0608",1)
~ THEN REPLY #42181 /* ~"'Outland Raiders.'"~ */ GOTO 35
  IF ~  Global("View_Art_09","AR0608",1)
~ THEN REPLY #42182 /* ~"'Hazazoth at the Consumption of N'gar.'"~ */ GOTO 36
  IF ~  Global("View_Art_10","AR0608",1)
~ THEN REPLY #42183 /* ~"'Surface of Thalasia.'"~ */ GOTO 37
  IF ~  Global("View_Art_11","AR0608",1)
~ THEN REPLY #42184 /* ~"'The Library.'"~ */ GOTO 38
  IF ~  Global("View_Art_12","AR0608",1)
~ THEN REPLY #42185 /* ~"'The Folly of Udo.'"~ */ GOTO 39
  IF ~  Global("View_Art_13","AR0608",1)
~ THEN REPLY #42186 /* ~"'Vale Beneath Clangeddin.'"~ */ GOTO 40
  IF ~  Global("View_Art_14","AR0608",1)
~ THEN REPLY #42187 /* ~"'Gray Hag of Oinos.'"~ */ GOTO 41
  IF ~  Global("View_Art_06","AR0608",1)
~ THEN REPLY #42188 /* ~"'Wave Motion Study #7.'"~ */ GOTO 42
  IF ~  Global("View_Art_05","AR0608",1)
~ THEN REPLY #42189 /* ~"'Moment's Glance from the Walls of Moch'chma.'"~ */ GOTO 43
  IF ~~ THEN REPLY #42190 /* ~"Actually, let me ask about something else..."~ */ GOTO 1
  IF ~~ THEN REPLY #42191 /* ~"Never mind, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0
  SAY #42192 /* ~"A stained-glass window found hovering on the third layer of Arcadia thirty-two years ago, foretelling a scene that had yet to occur. When the event came to pass, the images faded to leave what you saw behind. It is believed to have captured both the light and the darkness from the Orb of Night and Day on Arcadia, then slowly release it, creating a brief but slow fade of dawning and dusk - but only within the glass itself."~ */
  IF ~~ THEN REPLY #42193 /* ~"Orb of Night and Day? Arcadia?"~ */ GOTO 24
  IF ~~ THEN REPLY #42194 /* ~"Let me ask about another piece..."~ */ GOTO 21
  IF ~~ THEN REPLY #42195 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42196 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #42197 /* ~"Arcadia is a plane of peaceful order, also known as the Land of Perfect Good. The Orb of Night and Day is a sphere set in the top of Arcadia's highest peak; each half emits either light or darkness. The turning of the Orb gives Arcadia its day and night."~ */
  IF ~~ THEN REPLY #42198 /* ~"Let me ask about another piece..."~ */ GOTO 21
  IF ~~ THEN REPLY #42199 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42200 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.1
  SAY #42201 /* ~"Ah, the Cleansing Horn... a horn of beaten lead, metal drawn directly from the cube of Acheron. It is said that the Cleansing Horn last sounded where the Companies of the Jackal and the Gouged Eye Clans met for their battle at the Disputed Lands. Legends tell us that this horn's power was used near the battle's end to draw the floating cubes together, crushing the routing Company of the Jackal before it could escape."~ */
  IF ~~ THEN REPLY #42202 /* ~"Cubes? Acheron?"~ */ GOTO 26
  IF ~~ THEN REPLY #42203 /* ~"Let me ask about another piece..."~ */ GOTO 21
  IF ~~ THEN REPLY #42204 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42205 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #42206 /* ~"Acheron is a plane of harshly enforced order, where conformity is more important than good. It is composed of gigantic, metallic cubes which float through an endless void... many cubes are large enough that cities or entire kingdoms have been built upon their faces."~ */
  IF ~~ THEN REPLY #42207 /* ~"Let me ask about another piece..."~ */ GOTO 21
  IF ~~ THEN REPLY #42208 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42209 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 21.2
  SAY #42210 /* ~"All of them are chipped from the great magical sheet of black, infinite ice that rests in the black belly of the Plane of Ocanthus." Yvana pauses, tapping her chin. "It is said that this sheet of ice is the final destination of the River Styx, and that the recollections of all that have plunged into the Styx's memory-destroying waters still lie frozen within the ice."~ */
  IF ~~ THEN REPLY #42211 /* ~"If the waters of the Styx destroy one's memories, would this ice from Ocanthus do the same?"~ */ GOTO 28
  IF ~~ THEN REPLY #42212 /* ~"Let me ask about another piece..."~ */ GOTO 21
  IF ~~ THEN REPLY #42213 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42214 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #42215 /* ~"I could only assume so, yes."~ */
  IF ~~ THEN REPLY #42216 /* ~"Let me ask about another piece..."~ */ GOTO 21
  IF ~~ THEN REPLY #42217 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42218 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 21.3
  SAY #42219 /* ~"That piece was found in a cathedral in the fertile fields of Elysium on the first layer, Amoria the Untroubled, where it bordered the River Oceanus. The name of the piece is not known, but the skill and craftsmanship are believed to be one of the most striking examples of gem crafting in the planes. The mere way in which the piece captures, distills, and enhances the light through its facets is part of its breath-taking wonder. It seems to bring to light the possible ideological connection between even the most evil and the purest beings in the multiverse... fascinating."~ */
  IF ~~ THEN REPLY #42220 /* ~"Let me ask about another piece..."~ */ GOTO 21
  IF ~~ THEN REPLY #42221 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42222 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 21.4
  SAY #42223 /* ~"The chain comes from the city of Jangling Hiter, the city of chains that hangs on Minauros, third layer of Baator. The chains there are the finest in the multiverse, but the inhabitants of Jangling Hiter are malicious and cruel, using the chains as living weapons against all that enter their city and violate their laws."~ */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #42224 /* ~"Kytons move about the city of chains as spiders upon webs, adorned in chains woven tightly around their bodies. Kytons possess a power known as the 'gift of chains,' which allows them to manipulate chains with their minds. It is believed that my galleria's chain was animated during a battle in which the kyton controlling it was slain with a cursed hammer... its life essence then passing into the chain itself."~ */
  IF ~~ THEN REPLY #42225 /* ~"Let me ask about another piece..."~ */ GOTO 21
  IF ~~ THEN REPLY #42227 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42228 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 21.5
  SAY #42229 /* ~"This statue is believed to be the final fate of the Etherserian sorcerer Gangroighydon. Attacked by a conclave of rival sorcerers at the height of his dream madness, he was imprisoned with a spell that turned his flesh into stone. Gangroighydon is said to have been frozen with a final, awful curse still upon his lips, a curse so terrible that it was *never* meant to be spoken by the lips of a living man."~ */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #42230 /* ~"It is said that the fury of the curse was enough to blister the flesh from the bones of those that heard it, and that it could even shatter the stones themselves."~ */
  IF ~~ THEN REPLY #42231 /* ~"Let me ask about another piece..."~ */ GOTO 21
  IF ~~ THEN REPLY #42232 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42233 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 22.0
  SAY #42234 /* ~"Karasuthra is a layer of the Beastlands which is perpetually shrouded in night, filled with all manner of animals that stalk their prey in the darkness. A painter who had fallen in love with a Cat Lord and followed her to her homeland gave the paintings to me. Never did he reveal to me the secrets of their construction."~ */
  IF ~~ THEN REPLY #42235 /* ~"Let me ask about another painting..."~ */ GOTO 22
  IF ~~ THEN REPLY #42236 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42237 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 22.1
  SAY #42238 /* ~"An interesting piece, yes? The painter managed a most interesting effect with the forms in the cliff's shadows. The woman who brought me this piece told me she found it in an abandoned camp on the Outlands... the original painter was never found. Presumably, they were slain by the same raiders whose image they captured in the painting."~ */
  IF ~~ THEN REPLY #42239 /* ~"Let me ask about another painting..."~ */ GOTO 22
  IF ~~ THEN REPLY #42240 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42241 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 22.2
  SAY #42242 /* ~"This painting is a copy from the wall of one of the Gatehouse's - Sigil's largest asylum - cell walls. All the occupant could speak was: 'Hazazoth has consumed N'gar... Hazazoth has consumed N'gar...' A bit frightening, I think, but a fine painting nonetheless."~ */
  IF ~~ THEN REPLY #42243 /* ~"Let me ask about another painting..."~ */ GOTO 22
  IF ~~ THEN REPLY #42244 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42245 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 22.3
  SAY #42246 /* ~"Thalasia is the sea in which the River Oceanus, which winds through most all of the Plane of Elysium, begins and ends. The piece was painted by one of the many island's inhabitants."~ */
  IF ~~ THEN REPLY #42247 /* ~"Let me ask about another painting..."~ */ GOTO 22
  IF ~~ THEN REPLY #42248 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42249 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 22.4
  SAY #42250 /* ~"I know very little about this piece... it simply arrived on the doorstep of my galleria one day, swathed in black cloth and labeled 'From the Citadel.' One knowledgeable patron hypothesized that it might be some great sorcerer's fortress, suspended within a demi-plane of their own creation."~ */
  IF ~~ THEN REPLY #42251 /* ~"Let me ask about another painting..."~ */ GOTO 22
  IF ~~ THEN REPLY #42252 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42253 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 22.5
  SAY #42254 /* ~"This painting illustrates one of the legends of the Prime world Goha. Udo was a wizard-king of such skill and power that he set to casting a spell that would turn himself into a power, and the people of his great nation into divine servants. With the spell's completion, lightning crashed down around Udo's palace setting it ablaze and, before the thunder had died away, the city was empty... not a living thing to be found. Over seventy-thousand people vanished, without a trace, in a heartbeat. No one knows the fate of Udo or his people."~ */
  IF ~~ THEN REPLY #42255 /* ~"Let me ask about another painting..."~ */ GOTO 22
  IF ~~ THEN REPLY #42256 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42257 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 22.6
  SAY #42258 /* ~"Bulbog Stonenose sold this painting to me... it is of a field beneath Mount Clangeddin, the home of the dwarf einheriar - spirits of the Upper Planes who serve as guardians or warriors - in the Plane of Arcadia."~ */
  IF ~~ THEN REPLY #42259 /* ~"Let me ask about another painting..."~ */ GOTO 22
  IF ~~ THEN REPLY #42260 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42261 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 22.7
  SAY #42262 /* ~"This is said to be a portrait of Ravel Puzzlewell, very likely the most evil hag ever to have terrorized the Gray Waste and beyond."~ */
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #42263 /* ~"What do you know of Ravel Puzzlewell?"~ */ GOTO 17
  IF ~~ THEN REPLY #42264 /* ~"Let me ask about another painting..."~ */ GOTO 22
  IF ~~ THEN REPLY #42265 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42266 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 22.8
  SAY #42267 /* ~"A young man whose name I do not know sold me this piece. It was one of several he had, but the others already had owners... or so he said. I would so like to possess the entire collection, but alas - it oft seems some things are not meant to be."~ */
  IF ~~ THEN REPLY #42268 /* ~"Let me ask about another painting..."~ */ GOTO 22
  IF ~~ THEN REPLY #42269 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42270 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 22.9
  SAY #42271 /* ~"Moch'chma is a githzerai fortress which floats in the Plane of Limbo. The Moment's Glance was painted by the chaos-scholar Dy, who remembers everything she sees with perfect clarity when she is not stricken with madness."~ */
  IF ~~ THEN REPLY #42272 /* ~"Let me ask about another painting..."~ */ GOTO 22
  IF ~~ THEN REPLY #42273 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42274 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~  GlobalGT("Yvana","GLOBAL",0)
~ THEN BEGIN 44 // from:
  SAY #42275 /* ~Yvana smiles and motions you towards her. "Greetings, again. Do you have questions regarding one of the pieces?"~ */
  IF ~~ THEN REPLY #42276 /* ~"No, but I do have other questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #42277 /* ~"Yes, I do..."~ */ GOTO 21
  IF ~~ THEN REPLY #42278 /* ~"Not at the moment. Farewell, Yvana."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 1.4
  SAY #42279 /* ~Yvana takes the item and drags her fingers along it. She feels along the exterior of the object, then hands it back to you. "It's more than just a well-crafted toy modron, that's for certain. It may be some sort of puzzle-box, or portal key."~ */
  IF ~~ THEN REPLY #42280 /* ~"What's a modron?"~ */ GOTO 46
  IF ~~ THEN REPLY #42281 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42282 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #42283 /* ~"Modrons are a race of lawful, orderly beings. They come in many shapes and forms, each one occupying a different level in the rigid modron hierarchy. I think this sort is called a 'quadrone.'"~ */
  IF ~~ THEN REPLY #42284 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #42285 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 1.0
  SAY #65153 /* ~Yvana runs her fingertips over the engraved lettering upon the 'journal.' "No, I have not. You would do well to ask a proper linguist... you might find one at the Civic Festhall."~ */
  IF ~~ THEN REPLY #65154 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #65155 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 21.6
  SAY #66654 /* ~"Odd you should ask about that... just after a terrible noise, some patrons came running to me about a mangled corpse on the floor. The Harmonium came to remove the body from the premises, but could find no perpetrator. I told them that, in all likelihood, some madman had released Gangroighydon and been slain by his curse... but the old sorcerer himself was nowhere to be found. I know nothing more."~ */
  IF ~~ THEN REPLY #66655 /* ~"Let me ask about another piece..."~ */ GOTO 21
  IF ~~ THEN REPLY #66656 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #66657 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END
