// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDEATHAD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDEATHAD~

IF ~  True()
~ THEN BEGIN 0 // from: 65.0
  SAY #2945 /* ~"Sigilians, welcome! Please, take your seats, and listen to the 'darks' of which I speak!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN DO ~SetGlobal("Deaths_Adv","GLOBAL",1)
~ EXTERN ~DMORTE~ 299
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2946 /* ~Listen.~ */ DO ~SetGlobal("Deaths_Adv","GLOBAL",1)
~ GOTO 1
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32106 /* ~Stop listening, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #32107 /* ~He begins speaking with a somber tone: "Death. It is what awaits you at the end of life's journey." He coughs slightly, then raises his eyebrows dramatically, waving his hands at the same time: "Death is *not* an end! But a beginning!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 300
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32108 /* ~Keep listening.~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32109 /* ~Leave the lecture hall.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #32110 /* ~"For when you die, you shall not cease to exist, no! Far from it! The Outer Planes shall welcome you to their breasts! There, a new life... one such as you have *never* known, awaits you there!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 301
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32111 /* ~Keep listening.~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32112 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #32113 /* ~"You shall cast away the tattered cloak of this life and become one of the faithful, a petitioner! As a *petitioner* on this Outer Plane, your life's journey shall *truly* begin!"~ */
  IF ~~ THEN REPLY #32115 /* ~Keep listening.~ */ GOTO 4
  IF ~~ THEN REPLY #32114 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #32116 /* ~"If you have been a goodly sort of gentleman, steadfast in charity and goodwill toward your fellow bloods, perhaps the light-blanketed slopes of Mount Celestia shall house you when you die. Your spirit shall pass on to this place, dwelling as a petitioner in the beauty of golden mornings, soft sunlight that caresses..." He sighs dreamily.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 302
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32117 /* ~Keep listening.~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32118 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #32119 /* ~"Perhaps you lived your life to betray others and get ahead, giving lies instead of truths, back-stabbing others, all to accomplish your own goals. Cold, Blood-Red Carceri, the plane where all turncoats fall when they pass on, shall be the cage that imprisons you. As a petitioner on this plane, you shall live a life of treachery and treacheries, of lies and lying, knowing a life without trust."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 303
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32120 /* ~Keep listening.~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32121 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #32122 /* ~He hunches over; his eyes dart back and forth. "And *perhaps* you have lived a life of bloodthirsty evil, contemptuous of your fellow man, laying others low and doing as you pleased without a care for who or what you hurt..."~ */
  IF ~~ THEN REPLY #32123 /* ~Keep listening.~ */ GOTO 7
  IF ~~ THEN REPLY #32124 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #32125 /* ~"...then it is perhaps one of the Lower Planes - Baator, or the chaotic swirling layers of the Abyss - that shall welcome you! Evil to the *core* are the spirits that come to this plane, and most are doomed to mindless cruelty and suffering or servitude in the dreaded..." He whispers dramatically "...Blood War."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 304
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32126 /* ~Keep listening.~ */ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32127 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #32128 /* ~"No matter where you go, know this: You shall be embarking on a *new* life. A new life, my Sigilians!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 305
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32129 /* ~Keep listening.~ */ GOTO 9
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32130 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #32131 /* ~"You shall be able to start anew without the burden of memory or your past life. Your 'soul' goal, if you will..." He smiles at his own humor. "Is to *merge* with this new plane that you are on, becoming *one* with the ideals and the very substance of the plane itself!"~ */
  IF ~~ THEN REPLY #32132 /* ~Keep listening.~ */ GOTO 10
  IF ~~ THEN REPLY #32133 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #32134 /* ~"You shall be one of the inhabitants, the petitioners, on this plane or, ideally, one of the building blocks upon which the plane is built! It is the goal of *all* petitioners! To accomplish this goal, you..." He claps his hands together for emphasis: "...MUST *clap!* HOLD *clap!* TO *clap!* YOUR * clap!* IDEALS!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 306
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32135 /* ~Keep listening.~ */ GOTO 11
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32136 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #32137 /* ~"Your ideals! Good or evil, law or chaos, or somewhere in between! As you approach the alignment of the plane, your journey will end as you become part... of... the... plane... *itself!* 'Tis a glorious existence, my Sigilians!"~ */
  IF ~~ THEN REPLY #32138 /* ~Keep listening.~ */ GOTO 12
  IF ~~ THEN REPLY #32139 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #32140 /* ~"And that is what awaits you *after* 'death,' my audience! Have a care as to how you live your life, but know that it is *not* oblivion that awaits you after this life!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 307
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32141 /* ~Keep listening.~ */ GOTO 13
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32142 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #32143 /* ~"Now, I shall field any questions you may have for me. Anyone?"~ */
  IF ~~ THEN REPLY #32144 /* ~"I had a question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32145 /* ~Wait silently.~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.1 16.1
  SAY #32146 /* ~"If there are no questions, then I shall end this session... for now. I shall continue to lecture here at the Hall, and perhaps in years hence... I shall meet *you* as a petitioner beyond Death's Door!"~ */
  IF ~~ THEN REPLY #32147 /* ~Stop listening, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #32148 /* ~The speaker's head turns to face Morte, frowning slightly. He leans out, trying to see who spoke. "A question? A question from one of the living, perhaps?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 308
END

IF ~~ THEN BEGIN 16 // from:
  SAY #32149 /* ~He nods, as if he has put you in your place. "Very well. Now, I shall field any questions you may have for me. Anyone?"~ */
  IF ~~ THEN REPLY #32150 /* ~"I had a question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32151 /* ~Wait silently.~ */ GOTO 14
END

IF ~~ THEN BEGIN 17 // from: 13.0 16.0 19.1 20.0 22.0 23.0 24.2 25.2 26.2 27.0 28.1 29.2 30.1 31.3 32.1 35.0 36.0 37.0 38.2 39.2 40.1 42.1 43.0 44.0 45.1 46.1 52.0 53.0 54.0 55.4 56.0 57.0 58.0 59.0
  SAY #32152 /* ~He indicates for you to continue.~ */
  IF ~~ THEN REPLY #64426 /* ~"What's a petitioner?"~ */ GOTO 21
  IF ~~ THEN REPLY #64427 /* ~"Can a petitioner die?"~ */ GOTO 24
  IF ~~ THEN REPLY #64428 /* ~"Why do petitioners lose their memories?"~ */ GOTO 28
  IF ~~ THEN REPLY #32153 /* ~"What determines which plane you go to when you die?"~ */ GOTO 19
  IF ~~ THEN REPLY #32157 /* ~"What if someone can't die?"~ */ GOTO 39
  IF ~~ THEN REPLY #32158 /* ~"Explain 'alignment' to me."~ */ GOTO 43
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #32159 /* ~"The Dustmen say that *this* life is where we end up when we die."~ */ GOTO 44
  IF ~  GlobalLT("Deaths_Adv","GLOBAL",2)
~ THEN REPLY #32160 /* ~"Prove what you say is true."~ */ GOTO 45
  IF ~~ THEN REPLY #32161 /* ~"Tell me about the Blood War."~ */ GOTO 54
  IF ~~ THEN REPLY #32162 /* ~"I wanted to ask about one of the planes you mentioned."~ */ GOTO 55
  IF ~~ THEN REPLY #32163 /* ~"Never mind, actually. No question."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.10 19.2 20.1 22.1 23.1 24.3 25.3 26.3 27.1 28.2 29.3 30.2 31.4 32.2 35.1 36.1 37.1 38.3 39.3 40.2 42.2 43.1 44.1 45.2 46.2 52.1 53.1 54.1 55.5 56.1 57.1 58.1 59.1 66.4
  SAY #32164 /* ~"If there are no more questions...?"~ */
  IF ~  Global("Deaths_Adv","GLOBAL",1)
~ THEN REPLY #32165 /* ~Get ready to leave.~ */ GOTO 60
  IF ~  Global("Deaths_Adv","GLOBAL",2)
~ THEN REPLY #32166 /* ~Get ready to leave.~ */ GOTO 61
  IF ~  Global("Deaths_Adv","GLOBAL",3)
~ THEN REPLY #32167 /* ~Get ready to leave.~ */ GOTO 62
END

IF ~~ THEN BEGIN 19 // from: 17.3 66.0
  SAY #32168 /* ~"Your alignment, of course! Good people are destined for the Upper Planes, and *bad* people are cast into the Lower Planes..." He rolls his eyes, clasping his hand to his heart dramatically. "...may the powers have mercy on their souls."~ */
  IF ~~ THEN REPLY #32169 /* ~"Where do neutral people go?"~ */ GOTO 20
  IF ~~ THEN REPLY #32170 /* ~"I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32171 /* ~"That's all I wished to know."~ */ GOTO 18
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #32172 /* ~He raises an eyebrow. "An excellent question, excellent!" Heurns to the audience, raising a finger. "The answer is this: a spirit that has lived a life of complete neutrality, with no leanings toward good or evil, becomes a petitioner on the *Outlands,* the lands that encircle Sigil. They are destined for no plane except the land that lies right outside our sky, and of which the Spire is a part."~ */
  IF ~~ THEN REPLY #32173 /* ~"I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32174 /* ~"That's all I wished to know."~ */ GOTO 18
END

IF ~~ THEN BEGIN 21 // from: 17.0 66.1
  SAY #32175 /* ~"A petitioner is what you become when you arrive on this new plane after you have died. As a petitioner, you forsake memory and past life, focusing solely on your new one. And the goal of this new one is...?" He waits for a response from you with a smile.~ */
  IF ~~ THEN REPLY #32176 /* ~"To merge with the plane."~ */ GOTO 22
  IF ~~ THEN REPLY #32177 /* ~"Answer your own question. Don't presume to test me."~ */ GOTO 23
  IF ~~ THEN REPLY #32178 /* ~"Don't patronize me, you sod."~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #32179 /* ~"Very good! It looks as if some of my words actually have sunk into that skull of yours!" The audience chuckles.~ */
  IF ~~ THEN REPLY #32180 /* ~"I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32182 /* ~"That's all I wished to know."~ */ GOTO 18
END

IF ~~ THEN BEGIN 23 // from: 21.1 21.2
  SAY #32183 /* ~"Hmph. Remain in ignorance, then."~ */
  IF ~~ THEN REPLY #32185 /* ~"I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32186 /* ~"That's all I wished to know."~ */ GOTO 18
END

IF ~~ THEN BEGIN 24 // from: 17.1 66.2
  SAY #32188 /* ~He looks slightly uncomfortable at this. "Well... yes."~ */
  IF ~~ THEN REPLY #32190 /* ~"How?"~ */ GOTO 25
  IF ~~ THEN REPLY #32192 /* ~"What happens when they die?"~ */ GOTO 26
  IF ~~ THEN REPLY #32193 /* ~"I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32194 /* ~"That's all I wished to know."~ */ GOTO 18
END

IF ~~ THEN BEGIN 25 // from: 24.0 26.1
  SAY #32197 /* ~He looks a little more uncomfortable. "Well... through any of the normal means, really."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 309
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32198 /* ~"What happens when they die?"~ */ GOTO 26
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32199 /* ~"I had another question..."~ */ GOTO 17
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32201 /* ~"That's all I wished to know."~ */ GOTO 18
END

IF ~~ THEN BEGIN 26 // from: 24.1 25.1
  SAY #32203 /* ~He looks a little more uncomfortable. "Well... you merge with the plane."~ */
  IF ~~ THEN REPLY #32204 /* ~"What if the petitioner dies on a plane other than their home plane?"~ */ GOTO 27
  IF ~~ THEN REPLY #32205 /* ~"And how can they die?"~ */ GOTO 25
  IF ~~ THEN REPLY #32207 /* ~"I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32208 /* ~"That's all I wished to know."~ */ GOTO 18
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #32209 /* ~He looks very uncomfortable. "Eh... well, then *that* is the end of life, there... um, but no petitioner wants to leave their home plane, friend!" He looks around, realizing he is in a trap. "To do so would, uh, be oblivion should they die, really."~ */
  IF ~~ THEN REPLY #32210 /* ~"Hmm. I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32212 /* ~"I see. Well, that's all I wished to know."~ */ GOTO 18
END

IF ~~ THEN BEGIN 28 // from: 17.2 66.3
  SAY #32213 /* ~He raises an eyebrow. "Many pardons? What?"~ */
  IF ~~ THEN REPLY #32214 /* ~"I *said,* why do petitioners lose their memories when they die?"~ */ GOTO 29
  IF ~~ THEN REPLY #32216 /* ~"Forget it. I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32217 /* ~"Never mind. I have no question."~ */ GOTO 18
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #32219 /* ~He looks uncomfortable. "Eh... well, you know, who wishes to be burdened with such things as memories?" The audience murmurs.~ */
  IF ~~ THEN REPLY #32220 /* ~"I do."~ */ GOTO 30
  IF ~~ THEN REPLY #32221 /* ~"But *why* do they lose their memories?"~ */ GOTO 31
  IF ~~ THEN REPLY #32222 /* ~"Hmm. I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32223 /* ~"I see. Well, that's all I wished to know."~ */ GOTO 18
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #32224 /* ~The speaker smirks. "Looking at you, sir, I cannot begin to wonder why!" The audience chuckles.~ */
  IF ~~ THEN REPLY #32225 /* ~"So *why* do they lose their memories?"~ */ GOTO 31
  IF ~~ THEN REPLY #32226 /* ~"Hmm. I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32227 /* ~"I see. Well, that's all I wished to know."~ */ GOTO 18
END

IF ~~ THEN BEGIN 31 // from: 29.1 30.0
  SAY #32228 /* ~"I..." He frowns, begins to say something, then stops. After a moment, he continues, choosing his words carefully. "I imagine that it is because you must start afresh, your petitioner soul pure when you arrive on your new plane."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #32229 /* ~"And why should you have to do that, when all your life experiences have determined what plane you end up on?"~ */ GOTO 32
  IF ~~ THEN REPLY #32231 /* ~"That's no answer."~ */ GOTO 33
  IF ~~ THEN REPLY #32232 /* ~"That's... awful. Like a sick joke."~ */ GOTO 38
  IF ~~ THEN REPLY #32233 /* ~"Hmm. I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32235 /* ~"I see. Well, that's all I wished to know."~ */ GOTO 18
END

IF ~~ THEN BEGIN 32 // from: 31.0 38.0
  SAY #32236 /* ~He looks very uncomfortable. "Well... I..." He pauses. "Hmm. I don't know."~ */
  IF ~~ THEN REPLY #32237 /* ~"That's no answer."~ */ GOTO 33
  IF ~~ THEN REPLY #32238 /* ~"All right... I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32239 /* ~"I see. Well, that's all I wished to know."~ */ GOTO 18
END

IF ~~ THEN BEGIN 33 // from: 31.1 32.0 38.1
  SAY #32240 /* ~He becomes slightly angry. "Do you have a *better* answer, my friend? Perhaps one you can share?" The audience turns to face you.~ */
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #32241 /* ~"I don't remember where or when, but I seem to recall having heard that memories drift on the Astral Plane, as 'memory cores.'"~ */ GOTO 34
  IF ~~ THEN REPLY #32242 /* ~"No... I don't."~ */ GOTO 35
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #32243 /* ~An audience member shouts out: "He's right!"

The speaker turns to face the audience member. "Eh, well, perhaps he is. Well then, the question becomes: Is a lifetime of memories more important than living life again?"~ */
  IF ~~ THEN REPLY #32244 /* ~Truth: "Yes, it is."~ */ GOTO 35
  IF ~~ THEN REPLY #32245 /* ~Truth: "No."~ */ GOTO 36
  IF ~~ THEN REPLY #32246 /* ~"I don't know."~ */ GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 33.1 34.0
  SAY #32247 /* ~He says angrily: "Then it's simple enough: don't die, friend." The audience chuckles.~ */
  IF ~~ THEN REPLY #32248 /* ~"Hmm. I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32249 /* ~"I see. Well, that's all I wished to know."~ */ GOTO 18
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY #32250 /* ~He gives an exaggerated half-bow: "There you have it, then!"~ */
  IF ~~ THEN REPLY #32251 /* ~"Hmm. I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32252 /* ~"I suppose so. Well, that's all I wished to know."~ */ GOTO 18
END

IF ~~ THEN BEGIN 37 // from: 34.2 41.1 47.1
  SAY #32253 /* ~He sneers. "Yes, that's what I *thought* your answer might be."~ */
  IF ~~ THEN REPLY #32254 /* ~"Hmm. I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32255 /* ~"I've no more questions."~ */ GOTO 18
END

IF ~~ THEN BEGIN 38 // from: 31.2
  SAY #32256 /* ~"But compared to the life that awaits you on the new plane, it is trivial!"~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #32257 /* ~"But why should you have to do that, when all your life experiences have determined what plane you end up on?"~ */ GOTO 32
  IF ~~ THEN REPLY #32258 /* ~"That's no answer."~ */ GOTO 33
  IF ~~ THEN REPLY #32259 /* ~"Hmm. I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32260 /* ~"I see. Well, that's all I wished to know."~ */ GOTO 18
END

IF ~~ THEN BEGIN 39 // from: 17.4
  SAY #32261 /* ~He laughs. "Nonsense! Everyone *dies,* friend. Even gods die."~ */
  IF ~  GlobalLT("Deaths_Adv","GLOBAL",2)
~ THEN REPLY #32262 /* ~"I can't die."~ */ GOTO 40
  IF ~~ THEN REPLY #32263 /* ~"But *suppose* that someone can't die."~ */ GOTO 42
  IF ~~ THEN REPLY #32264 /* ~"Hmm. I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32265 /* ~"I see. Well, that's all I wished to know."~ */ GOTO 18
END

IF ~~ THEN BEGIN 40 // from: 39.0 42.0
  SAY #32266 /* ~"Oh, truly! Look, everyone, a rare treat: one of the great immortals has graced us with his presence! Greetings, o immortal!" The audience laughs.~ */
  IF ~~ THEN REPLY #32267 /* ~"I can prove it."~ */ GOTO 41
  IF ~~ THEN REPLY #32268 /* ~"Forget it. I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32269 /* ~"Never mind. I've no more questions."~ */ GOTO 18
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #32270 /* ~"Oh do! Do!" There is more laughter from the audience. "What sport! Take heed, my audience. I think we shall have a rare display of my lecture today! Come up here, o immortal, and we shall see who is right and who is dead!"~ */
  IF ~~ THEN REPLY #32271 /* ~Kill yourself, then get back up.~ */ DO ~IncrementGlobal("Death","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("CW_Suicide_Reason","GLOBAL",1)
SetGlobal("Death_Lecture","GLOBAL",2)
~ GOTO 48
  IF ~~ THEN REPLY #32272 /* ~"Actually, forget it."~ */ GOTO 37
END

IF ~~ THEN BEGIN 42 // from: 39.1
  SAY #32273 /* ~"Well then, based on what I've *said,* he would never reach the Outer Planes and never become a petitioner."~ */
  IF ~  GlobalLT("Deaths_Adv","GLOBAL",2)
~ THEN REPLY #32274 /* ~"I can't die."~ */ GOTO 40
  IF ~~ THEN REPLY #32275 /* ~"Hmm. I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32276 /* ~"I see. Well, that's all I wished to know."~ */ GOTO 18
END

IF ~~ THEN BEGIN 43 // from: 17.5
  SAY #32277 /* ~"Forgive me if I did not explain myself for all my listeners: 'Alignment' is your spiritual leanings: good or evil, law or chaos. Alignment is the way you *behave.* And it is of consequence! The way you approach life decides your destination when you die."~ */
  IF ~~ THEN REPLY #32278 /* ~"I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32279 /* ~"That's all I wished to know."~ */ GOTO 18
END

IF ~~ THEN BEGIN 44 // from: 17.6
  SAY #32280 /* ~The speaker chuckles derisively... some members of the audience chuckle, as well. "There are countless petitioners, my friend, *Dustmen* among them, who would disagree with Dustman... 'philosophy.'"~ */
  IF ~~ THEN REPLY #32281 /* ~"I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32282 /* ~"That's all I wished to know."~ */ GOTO 18
END

IF ~~ THEN BEGIN 45 // from: 17.7
  SAY #32283 /* ~"Eh?" The lecturer looks taken aback. "And how might I do that?"~ */
  IF ~~ THEN REPLY #32284 /* ~"Die. Here. Now."~ */ GOTO 46
  IF ~~ THEN REPLY #32285 /* ~"Forget it. I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32286 /* ~"Never mind. I've no more questions."~ */ GOTO 18
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #32287 /* ~The audience becomes silent. Feeling the pressure, the speaker swallows slightly. "Well now..." He smirks suddenly. "If you go first, I shall do so." The audience chuckles.~ */
  IF ~~ THEN REPLY #32288 /* ~"Agreed."~ */ GOTO 47
  IF ~~ THEN REPLY #32289 /* ~"Forget it. I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32290 /* ~"Never mind. I've no more questions."~ */ GOTO 18
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #32291 /* ~"Very well!" The speaker's face is stone for a moment, then it brightens. "Come up to the stage, my friend!" He turns to the audience, smiling. "A rare treat, Sigilians! Today - and today only - we shall have a live demonstration of how to become a petitioner."~ */
  IF ~~ THEN REPLY #32292 /* ~Kill yourself, then get back up.~ */ DO ~IncrementGlobal("Death","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("CW_Suicide_Reason","GLOBAL",2)
SetGlobal("Death_Lecture","GLOBAL",2)
~ GOTO 48
  IF ~~ THEN REPLY #32293 /* ~"Actually, forget it."~ */ GOTO 37
END

IF ~~ THEN BEGIN 48 // from: 41.0 47.0
  SAY #32294 /* ~The speaker turns white at this, taking a step back. "By the powers...!"~ */
  IF ~  Global("CW_Suicide_Reason","GLOBAL",1)
~ THEN REPLY #32295 /* ~"I think it's only fair that you prove *your* point, now..."~ */ GOTO 49
  IF ~  Global("CW_Suicide_Reason","GLOBAL",2)
~ THEN REPLY #32296 /* ~"Your turn."~ */ GOTO 49
  IF ~  Global("CW_Suicide_Reason","GLOBAL",2)
~ THEN REPLY #32297 /* ~Just smile at him.~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0 48.1 48.2
  SAY #32298 /* ~"Eh..." The audience watches in morbid fascination. "Well now..."~ */
  IF ~  Global("CW_Suicide_Reason","GLOBAL",1)
~ THEN REPLY #32299 /* ~"Go on, die. Here. Now. Prove your words to be true. Embrace your life as a petitioner."~ */ GOTO 50
  IF ~  Global("CW_Suicide_Reason","GLOBAL",2)
~ THEN REPLY #32300 /* ~Bluff: "Kill yourself, or I'll do it."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_DA_1","GLOBALLaw",-1)
~ GOTO 50
  IF ~  Global("CW_Suicide_Reason","GLOBAL",2)
~ THEN REPLY #32301 /* ~Truth: "Kill yourself, or I'll do it."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_DA_1","GLOBALGood",-1)
~ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0 49.1 49.2
  SAY #32302 /* ~He gulps. "Now... eh... hmmmn." He offers weakly: "Heh. I must confess that I'm not *quite* ready to depart this life just yet."~ */
  IF ~~ THEN REPLY #32303 /* ~Kill him.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_DA_1","GLOBALGood",-2)
ForceAttack(Protagonist,Myself)
Enemy()
RunAwayFromEx(Protagonist,TEN_AI_SECONDS,FALSE)
SetGlobal("Death_Lecture","GLOBAL",4)
SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #32304 /* ~Make a motion to kill him, stopping *just* short of his neck.~ */ DO ~SetGlobal("Deaths_Adv","GLOBAL",3)
~ GOTO 51
  IF ~~ THEN REPLY #32305 /* ~"So, this great new life on the Outer Planes may not be all it's supposed to be?"~ */ DO ~SetGlobal("Deaths_Adv","GLOBAL",2)
~ GOTO 52
  IF ~~ THEN REPLY #32306 /* ~"That's what I *thought,* you pompous, blustery charlatan."~ */ DO ~SetGlobal("Deaths_Adv","GLOBAL",2)
~ GOTO 53
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #32307 /* ~The speaker flinches, clasping his eyes shut and screeching... you hear a drizzling sound as he soils himself.~ */
  IF ~~ THEN REPLY #32308 /* ~"So, this great new life on the Outer Planes may not be all it's supposed to be?"~ */ GOTO 52
  IF ~~ THEN REPLY #32309 /* ~"That's what I *thought,* you pompous, blustery charlatan."~ */ GOTO 53
END

IF ~~ THEN BEGIN 52 // from: 50.2 51.0
  SAY #32310 /* ~The speaker is aware of his hypocrisy, but is afraid of the alternative. "Perhaps not. Heh." He glances quickly at the audience. "Eh... well. Certainly not *now.*"~ */
  IF ~~ THEN REPLY #32311 /* ~"As I thought. I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32312 /* ~"That's what I thought. I've no more questions."~ */ GOTO 18
END

IF ~~ THEN BEGIN 53 // from: 50.3 51.1
  SAY #32313 /* ~"Eh... yes." The speaker looks cowed, and his voice drops in defeat. "Hmmmn. Yes."~ */
  IF ~~ THEN REPLY #32314 /* ~"I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32315 /* ~"I've no more questions."~ */ GOTO 18
END

IF ~~ THEN BEGIN 54 // from: 17.8
  SAY #32316 /* ~"Have you not heard of this, o clueless one? The war between the baatezu and tanar'ri? I do not have the centuries it would take to describe this conflict. Seek out another, for that is not what this lecture is about."~ */
  IF ~~ THEN REPLY #32317 /* ~"I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32318 /* ~"I've no more questions."~ */ GOTO 18
END

IF ~~ THEN BEGIN 55 // from: 17.9
  SAY #32319 /* ~"Oh? Which?"~ */
  IF ~~ THEN REPLY #32320 /* ~"The Abyss..."~ */ GOTO 56
  IF ~~ THEN REPLY #32321 /* ~"Baator..."~ */ GOTO 57
  IF ~~ THEN REPLY #32322 /* ~"Carceri..."~ */ GOTO 58
  IF ~~ THEN REPLY #32323 /* ~"Mount Celestia..."~ */ GOTO 59
  IF ~~ THEN REPLY #32324 /* ~"Never mind. I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32325 /* ~"Actually, forget it. I've no more questions."~ */ GOTO 18
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #32326 /* ~"A plane of over six hundred layers of festering chaos and evil. Home to the fiendish tanar'ri!" He gestures dramatically. "But you should seek out someone more knowledgeable on the planes than I."~ */
  IF ~~ THEN REPLY #32327 /* ~"I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32328 /* ~"I've no more questions."~ */ GOTO 18
END

IF ~~ THEN BEGIN 57 // from: 55.1
  SAY #32329 /* ~"Nine regimented plane of lawful evil." He chuckles and gestures dramatically. "Home to the fiendish baatezu! Sign a contract with them and you'll be wrapped in their chains of intrigue for life!" He smiles. "But you should seek out someone more knowledgeable on the planes than I."~ */
  IF ~~ THEN REPLY #32330 /* ~"I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32331 /* ~"I've no more questions."~ */ GOTO 18
END

IF ~~ THEN BEGIN 58 // from: 55.2
  SAY #32332 /* ~"The prison plane, cold, brutal and washed with red. Betrayers and liars make their home there... it is said that the Titans are imprisoned here when they were hurled from Olympus!" He gestures dramatically. "But you should seek out someone more knowledgeable on the planes than I."~ */
  IF ~~ THEN REPLY #32333 /* ~"I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32334 /* ~"I've no more questions."~ */ GOTO 18
END

IF ~~ THEN BEGIN 59 // from: 55.3
  SAY #32335 /* ~"Mount Celestia, a plane of eternal good and faith." He clasps his hands together in prayer. "Where devas fly the skies, archons rule with honor and nobility... the very model of goodness!" He smiles. "But you should seek out someone more knowledgeable on the planes than I."~ */
  IF ~~ THEN REPLY #32336 /* ~"I had another question..."~ */ GOTO 17
  IF ~~ THEN REPLY #32337 /* ~"I've no more questions."~ */ GOTO 18
END

IF ~~ THEN BEGIN 60 // from: 18.0
  SAY #32338 /* ~"...then I shall take my leave - for now. I shall continue to lecture here at the Hall, and perhaps in years hence... I shall meet *you* as a petitioner beyond Death's Door!"~ */
  IF ~~ THEN REPLY #32339 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 61 // from: 18.1
  SAY #32340 /* ~He looks eager to wrap things up. "...then I shall end this session... um, I shall continue to lecture here at the Hall, so... eh... tell all your friends."~ */
  IF ~~ THEN REPLY #32341 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 18.2
  SAY #32342 /* ~He looks eager to wrap things up. "...then I shall end this session... um, I shall continue to lecture here at the Hall, so... eh... tell all your friends."~ */
  IF ~~ THEN REPLY #32343 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #32344 /* ~Someone in the audience shouts: "Sure! So they can come see you mess your tunic again!" The room fills with laughter...~ */
  IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #32345 /* ~"Eh... hmm."~ */
  IF ~~ THEN REPLY #32346 /* ~Leave.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 65 // from:
  SAY #49450 /* ~This short, squat man carries himself with an air of self-importance. He appears to be giving a lecture at the moment.~ */
  IF ~~ THEN REPLY #49451 /* ~Stay for the lecture.~ */ GOTO 0
  IF ~~ THEN REPLY #49452 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from:
  SAY #64424 /* ~"Go on, then..."~ */
  IF ~~ THEN REPLY #64425 /* ~"What determines which plane they appear on when they die?"~ */ GOTO 19
  IF ~~ THEN REPLY #64426 /* ~"What's a petitioner?"~ */ GOTO 21
  IF ~~ THEN REPLY #64427 /* ~"Can a petitioner die?"~ */ GOTO 24
  IF ~~ THEN REPLY #64428 /* ~"Why do petitioners lose their memories?"~ */ GOTO 28
  IF ~~ THEN REPLY #64429 /* ~"Never mind, actually. No question."~ */ GOTO 18
END
