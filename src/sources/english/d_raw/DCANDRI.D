// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCANDRI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCANDRI~

IF ~  Global("Ingress","GLOBAL",7)
!Dead("Ingress")
~ THEN BEGIN 0 // from:
  SAY #3068 /* ~Candrian stands as you approach him. "The tooth woman wanted you to have these," he says, holding out his hand. "She wanted to express her thanks, even out the balance book as it were, and be done with the damned things." In the palm of his hand are Ingress' dancing teeth, and he smoothly deposits them into your hand. "Enjoy them, seeker." ~ */
  IF ~~ THEN REPLY #3364 /* ~"I had some other questions..."~ */ DO ~SetGlobal("Ingress","GLOBAL",8)
GiveItemCreate("ICteeth",Protagonist,1,0,0)
AddexperienceParty(750)
~ JOURNAL #28753 /* ~On returning to Candrian after he freed Ingress from Sigil, he presented me with a gift from her: her dancing teeth. Delightful.~ */ GOTO 5
  IF ~~ THEN REPLY #12009 /* ~"Farewell."~ */ DO ~SetGlobal("Ingress","GLOBAL",8)
GiveItemCreate("ICteeth",Protagonist,1,0,0)
AddexperienceParty(750)
~ JOURNAL #28753 /* ~On returning to Candrian after he freed Ingress from Sigil, he presented me with a gift from her: her dancing teeth. Delightful.~ */ EXIT
END

IF ~  Global("Ingress","GLOBAL",8)
~ THEN BEGIN 1 // from:
  SAY #12010 /* ~Once again, you are struck by the insubstantial nature of this man's existence, and once again, you are riveted as he turns his pale blue eyes on you. "Have your travels brought forth what you need?"~ */
  IF ~~ THEN REPLY #12011 /* ~"Not yet. I had some questions for you."~ */ GOTO 5
  IF ~~ THEN REPLY #12012 /* ~"Not yet. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #12013 /* ~You see a soft-looking man with gentle, far-staring eyes. He dresses in supple leather clothing, and carries various implements of use and destruction about his body, such as ropes, spikes, tinderboxes, and empty vials of air. He looks half-gone - literally. There's an insubstantiality to his existence, as if his essence had been partially leeched away. He focuses those eyes on you, and suddenly you find them gripping and determined. "Greetings to you, o seeker."~ */
  IF ~~ THEN REPLY #12014 /* ~"Greetings."~ */ GOTO 4
  IF ~~ THEN REPLY #12015 /* ~"Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #12016 /* ~Once again, you are struck by the insubstantial nature of this man's existence, and once again, you are riveted as he turns his pale blue eyes on you. "Have your travels brought forth what you need?"~ */
  IF ~~ THEN REPLY #12017 /* ~"Not yet. I had some questions for you."~ */ GOTO 5
  IF ~~ THEN REPLY #12018 /* ~"Not yet. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #12019 /* ~He carefully sets down the mug he's holding, and gives you all his attention. "I have seen the far reaches of the multiverse and returned to tell the tale. I have walked upon the bodies of dead gods and spun moonbeams in the Astral ahead of a thousand shrieking githyanki knights. I have passed the edges of existence and watched my essence shiver away before me. What is it I can do for you?"~ */
  IF ~~ THEN REPLY #12020 /* ~"I had some questions for you."~ */ GOTO 5
  IF ~~ THEN REPLY #12021 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 1.0 3.0 4.0 6.0 7.1 8.5 9.5 10.2 11.6 12.2 13.1 14.1 15.1 16.3 17.2 18.5 19.5 20.5 21.2 22.2 23.2 24.6 25.4 26.3 27.3 28.2 29.2 30.2 31.2 32.2 33.1 34.2 35.2 36.3 37.1 38.1 39.1 40.1 41.2 42.0 43.0 44.0 45.0
  SAY #12022 /* ~"Perhaps I have answers for you. Speak, and I shall tell you."~ */
  IF ~  !Dead("Ingress")
Global("Ingress","GLOBAL",5)
~ THEN REPLY #12023 /* ~"I met a woman named Ingress with *very* bad teeth. She said she had come through a portal from some world that was opened by a tune hummed near two crossed trees. Can you get her home?"~ */ DO ~SetGlobal("Ingress","GLOBAL",6)
~ GOTO 6
  IF ~~ THEN REPLY #12024 /* ~"Who are you?"~ */ GOTO 7
  IF ~~ THEN REPLY #12025 /* ~"What are you doing?"~ */ GOTO 40
  IF ~~ THEN REPLY #12026 /* ~"What is this place?"~ */ GOTO 41
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12027 /* ~"I'm looking for a journal I lost."~ */ GOTO 44
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12028 /* ~"Do you know a Collector named Pharod?"~ */ GOTO 45
  IF ~~ THEN REPLY #12029 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #12030 /* ~He pauses briefly, thinking. "I know the portal of which you speak, though I have not traveled it these thirty years gone. I will take her home, seeker. Go tell her to await my arrival, then meet me back here, and I will tell you if I was successful or not."~ */
  IF ~~ THEN REPLY #12031 /* ~"Thanks. I had some other questions..."~ */ JOURNAL #28754 /* ~I spoke with Candrian about Ingress and he said he would guide her home. He told me to go tell her to await him, then meet him back at the Smoldering Corpse.~ */ GOTO 5
  IF ~~ THEN REPLY #12032 /* ~"Thanks. Farewell."~ */ JOURNAL #28754 /* ~I spoke with Candrian about Ingress and he said he would guide her home. He told me to go tell her to await him, then meet him back at the Smoldering Corpse.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #12033 /* ~"I am Candrian Illborne, traveler, dreamer, talespinner, and so forth."~ */
  IF ~~ THEN REPLY #12034 /* ~"You are a traveler? Tell me of the planes."~ */ GOTO 8
  IF ~~ THEN REPLY #12035 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #12036 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #12037 /* ~"I am tired, seeker, so tired... I am fresh back from negation. I will answer what I can for you, but I cannot promise that you will find satisfaction in the answers I give. What would you know? Would you hear of the Outer Planes, the Prime Material, or the Inner Planes?"~ */
  IF ~~ THEN REPLY #12038 /* ~"What's the difference?"~ */ GOTO 10
  IF ~~ THEN REPLY #12039 /* ~"Tell me of the Outer Planes."~ */ GOTO 11
  IF ~~ THEN REPLY #12040 /* ~"Tell me of the Inner Planes."~ */ GOTO 35
  IF ~~ THEN REPLY #12041 /* ~"Tell me of the Prime Material."~ */ GOTO 39
  IF ~~ THEN REPLY #12042 /* ~"Fresh back from negation? What do you mean?"~ */ GOTO 36
  IF ~~ THEN REPLY #12043 /* ~"None. But I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #12044 /* ~"None. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 13.0 17.1 18.4 19.3 20.4 34.0 35.1 36.2 37.0 38.0 39.0
  SAY #12045 /* ~"You would know more of the planes? Ask, and I shall tell as best I can. Would you hear of the Outer Planes, the Prime Material, or the Inner Planes?"~ */
  IF ~~ THEN REPLY #12046 /* ~"What's the difference?"~ */ GOTO 10
  IF ~~ THEN REPLY #12047 /* ~"Tell me of the Outer Planes."~ */ GOTO 11
  IF ~~ THEN REPLY #12048 /* ~"Tell me of the Inner Planes."~ */ GOTO 35
  IF ~~ THEN REPLY #12049 /* ~"Tell me of the Prime Material."~ */ GOTO 39
  IF ~~ THEN REPLY #12050 /* ~"What did you mean when you mentioned 'negation' before?"~ */ GOTO 36
  IF ~~ THEN REPLY #12051 /* ~"None. But I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #12052 /* ~"None. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #12053 /* ~"The difference is true essence, seeker. The Inner Planes are matter, substance, true physicality. They are the building blocks of the multiverse, for it is from them that all belief in the elements springs. The Inner Planes filter through the Ethereal Plane - the plane of potential, some say, which forms the elements into the worlds of mortals. Once past the Ethereal Plane, one reaches the Prime Material, where exist all manner of mortals and monsters and myths and machines. It is there that belief is born, and there that the spirits that create the Outer Planes are born. When mortals die, they pass through the Astral Plane, a no-place that is thought and mental energy itself. It is in all things, and in none. It is paradox, among other things, and it filters spirits into the Great Ring. Do you comprehend so far?"~ */
  IF ~~ THEN REPLY #12054 /* ~"Yes. Go on."~ */ GOTO 11
  IF ~~ THEN REPLY #12055 /* ~"I'm not sure."~ */ GOTO 12
  IF ~~ THEN REPLY #12056 /* ~"Forget this line of questioning. I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #12057 /* ~"Let's get into this later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.1 10.0 12.1
  SAY #12058 /* ~"Now... the Outer Planes... Where should I start? Do you know the cardinal rules of the planes, on which all others are based? Do you know about the composition of the Outer Planes? Do you know of the Great Ring, and its divisions in our hearts? Do you know of the individual planes? Each of these leads to the next, and so it is best to start from the beginning."~ */
  IF ~  Global("Know_Rule_Of_3","GLOBAL",1)
~ THEN REPLY #12059 /* ~"Tell me the cardinal rules."~ */ GOTO 14
  IF ~~ THEN REPLY #12060 /* ~"Tell me of the composition of the planes."~ */ GOTO 15
  IF ~~ THEN REPLY #12061 /* ~"Tell me of the Great Ring and its divisions."~ */ GOTO 17
  IF ~~ THEN REPLY #12062 /* ~"Tell me of the individual planes."~ */ GOTO 18
  IF ~~ THEN REPLY #12063 /* ~"Tell me of the Inner Planes instead."~ */ GOTO 35
  IF ~~ THEN REPLY #12064 /* ~"Tell me of the Prime Material Plane instead."~ */ GOTO 39
  IF ~~ THEN REPLY #12065 /* ~"Forget it. I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #12066 /* ~"Perhaps we should do this later. Farewell."~ */ EXIT
  IF ~  Global("Know_Rule_Of_3","GLOBAL",0)
~ THEN REPLY #28755 /* ~"Tell me the cardinal rules."~ */ DO ~SetGlobal("Know_Rule_Of_3","GLOBAL",1)
~ GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #12160 /* ~"The Inner Planes are substance. They create matter. They lead to the Prime Material Plane, which is life and death and the birth of thought. The Prime leads to the Outer Planes, which are belief made solid, where thoughts are given form. Is that easier for you?"~ */
  IF ~~ THEN REPLY #12161 /* ~"I still don't understand."~ */ GOTO 13
  IF ~~ THEN REPLY #12162 /* ~"Yes. Go on."~ */ GOTO 11
  IF ~~ THEN REPLY #12163 /* ~"Just answer some other questions for me..."~ */ GOTO 5
  IF ~~ THEN REPLY #12164 /* ~"I had best be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #12165 /* ~"Unfortunately, I have explained it as best I can. Remember this, though: The place you stand is not true matter, but is created by the force of beliefs all across the Prime and the Outer Planes. It can be changed by belief, and is subject to alteration. It is mutable and changeable with the power of mind alone."~ */
  IF ~~ THEN REPLY #12166 /* ~"Very well. So tell me of the planes."~ */ GOTO 9
  IF ~~ THEN REPLY #12167 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #12168 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.0 11.8
  SAY #12169 /* ~"There are three rules you must remember. The first is the Rule of Threes: If you see two things, look for a third. The second rule is called The Center of the Multiverse: The cosmos is so big, seeker, that anywhere you stand may as well be considered the center. Some would call Sigil the center, and they're right - but they would also be right to call it a spot in the endless voids of Gehenna. There is no edge to the multiverse, and so there is no center. The third rule is the Unity of Rings: All things come in rings - rings have no beginning and no end: The Great Ring of the Outer Planes, the ring of Sigil's form, the ring of the elemental planes - even the powers think in rings, circles upon circles upon circles."~ */
  IF ~~ THEN REPLY #12170 /* ~"Now tell me of the composition of the planes."~ */ GOTO 15
  IF ~~ THEN REPLY #12171 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #12172 /* ~"We'll get back to this later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.1 14.0
  SAY #12173 /* ~"The Outer Planes are created of and by belief and thought and faith. They take their imagined form from the Prime Material Plane, shaped into forms that stagger the imagination, built by the accumulation of belief. Belief creates the planes. Belief is power here. Change belief, and you can change the nature of reality. The creatures that are born here - the planeborn, like the fiends and celestials - are truly borne of the thoughts and concepts of mortals. They each express some sort of ideal, and the more powerful the ideal, the more powerful the being - thus, the being that symbolizes love is one of the strongest of all."~ */
  IF ~~ THEN REPLY #12174 /* ~"Go on."~ */ GOTO 16
  IF ~~ THEN REPLY #12175 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #12176 /* ~"We'll take this up later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #12177 /* ~"That's why the powers - gods, some call them - live out here. This is where all the faith in them comes - this is where they are at their most pure and most strong. Their realms are extensions of their very beings, manifestations of their godly essence, all of it informed by belief."~ */
  IF ~~ THEN REPLY #12178 /* ~"So the composition of the planes is belief? Tell me of the Great Ring now."~ */ GOTO 17
  IF ~~ THEN REPLY #12179 /* ~"Tell me of the Inner Planes."~ */ GOTO 35
  IF ~~ THEN REPLY #12180 /* ~"Tell me of the Prime Material Plane."~ */ GOTO 39
  IF ~~ THEN REPLY #12181 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #12182 /* ~"That's enough for now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.2 16.0
  SAY #12183 /* ~"Among the loose unity of planewalkers, we conceive of the infinite Outer Planes as a ring surrounding the plane of ultimate neutrality - the Outlands. The spire atop which Sigil sits is in the center of the Outlands. The further one travels away from the Spire, the less neutral the plane grows, until it spills into the neighboring planes. Each of these planes impinges on the Outlands, spinning themselves into law and chaos, good and evil. The Great Road marks the demarcation between the Outlands and the gate towns that spring up around the gates to these planes. Beyond the gate towns lie the Hinterlands, uncharted territory that is lost to history, that loses thought. Danger lies in the Hinterlands."~ */
  IF ~~ THEN REPLY #12184 /* ~"Go on."~ */ GOTO 20
  IF ~~ THEN REPLY #12185 /* ~"Let's go back a few steps, to the overview. Tell me more of the planes in general." ~ */ GOTO 9
  IF ~~ THEN REPLY #12186 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #12187 /* ~"None. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.3 19.4 21.1 22.1 23.1 24.5 25.3 26.2 27.2 28.1 29.1 30.1 31.1 32.1 33.0 34.1
  SAY #12188 /* ~"Which set of planes do you want to hear of?"~ */
  IF ~~ THEN REPLY #12189 /* ~"The Upper Planes."~ */ GOTO 19
  IF ~~ THEN REPLY #12190 /* ~"The Lower Planes."~ */ GOTO 24
  IF ~~ THEN REPLY #12191 /* ~"The Boundary Planes."~ */ GOTO 32
  IF ~~ THEN REPLY #12192 /* ~"The Outlands."~ */ GOTO 34
  IF ~~ THEN REPLY #12193 /* ~"Let's go back a few steps, to the overview. Tell me more of the planes in general." ~ */ GOTO 9
  IF ~~ THEN REPLY #12194 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #12195 /* ~"None. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 20.0 21.0 22.0 23.0
  SAY #12196 /* ~"Of the Upper Planes, there are the neutral planes, the lawful planes, and the chaotic planes. What would you know?"~ */
  IF ~~ THEN REPLY #12197 /* ~"The neutral planes."~ */ GOTO 21
  IF ~~ THEN REPLY #12198 /* ~"The lawful planes."~ */ GOTO 22
  IF ~~ THEN REPLY #12199 /* ~"The chaotic planes."~ */ GOTO 23
  IF ~~ THEN REPLY #12200 /* ~"Let's go back a few steps, to the overview. Tell me more of the planes in general." ~ */ GOTO 9
  IF ~~ THEN REPLY #12201 /* ~"Tell me more of the planes of the Great Ring." ~ */ GOTO 18
  IF ~~ THEN REPLY #12202 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #12203 /* ~"None. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0
  SAY #12204 /* ~"The Outer Planes differ by morality, not substance. For you, we'll divide the planes into three sets: The Upper Planes of Good, the Lower Planes of Evil, and the Boundary Planes of Neutrality. These are then divided further by Law and Chaos, with the Outlands in the middle. Which of these interest you?"~ */
  IF ~~ THEN REPLY #12205 /* ~"The Upper Planes."~ */ GOTO 19
  IF ~~ THEN REPLY #12206 /* ~"The Lower Planes."~ */ GOTO 24
  IF ~~ THEN REPLY #12207 /* ~"The Boundary Planes."~ */ GOTO 32
  IF ~~ THEN REPLY #12208 /* ~"The Outlands."~ */ GOTO 34
  IF ~~ THEN REPLY #12209 /* ~"Let's go back a few steps, to the overview. Tell me more of the planes in general." ~ */ GOTO 9
  IF ~~ THEN REPLY #12210 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #12211 /* ~"None. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0
  SAY #12212 /* ~"The neutral upper planes contain the Beastlands, a place of neutrality and goodness, with a slight tinge of chaos, where the animals rule in the eternal noon and night. They hold Bytopia, twin paradise of industry and labor, where all work toward the good of all, and Elysium, the sweetest plane of goodness and calm I have ever come across. Alas, right now I am not well enough to enjoy any of their restorative effects. What would you hear of now?"~ */
  IF ~~ THEN REPLY #12213 /* ~"Tell me of the rest of the Upper Planes."~ */ GOTO 19
  IF ~~ THEN REPLY #12214 /* ~"Tell me more of the planes of the Great Ring." ~ */ GOTO 18
  IF ~~ THEN REPLY #12215 /* ~"I had some other questions."~ */ GOTO 5
  IF ~~ THEN REPLY #12216 /* ~"None of them. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.1
  SAY #12217 /* ~Candrian gives a small shudder. "I am not the best person to speak of the planes of law," he says, "for the innate structure and ultimate patterns they impose frighten me. I steer clear of them, because I value my individuality more than I value the knowledge they'll bring me. They include regimented Arcadia, nearest of the good planes to the unbending order of Mechanus, and Mount Celestia, home of the archons, an island in the Silver Sea."~ */
  IF ~~ THEN REPLY #12218 /* ~"Tell me of the rest of the Upper Planes."~ */ GOTO 19
  IF ~~ THEN REPLY #12219 /* ~"Tell me more of the planes of the Great Ring." ~ */ GOTO 18
  IF ~~ THEN REPLY #12220 /* ~"I had some other questions."~ */ GOTO 5
  IF ~~ THEN REPLY #12221 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.2
  SAY #12222 /* ~"These are where I feel at home, though I steer clear of Ysgard, for the most part - the endless battles and tests of mettle among the floating earthbergs of the plane don't do much for my disposition. Arborea, though..." He sighs. "The mountains are taller, the air clearer, the rivers purer, and the game larger than anywhere else. It is a true paradise, a place where passions run high and the wine never ceases to flow. When I have recovered enough of my wits and myself - when we have done with the Outer Planes, you should ask me of the Inner, and I will describe my journey to you - I will return to Arborea's bowers and glades and lose myself for a time."~ */
  IF ~~ THEN REPLY #12223 /* ~"Tell me of the rest of the Upper Planes."~ */ GOTO 19
  IF ~~ THEN REPLY #12224 /* ~"Tell me more of the planes of the Great Ring." ~ */ GOTO 18
  IF ~~ THEN REPLY #12225 /* ~"I had some other questions."~ */ GOTO 5
  IF ~~ THEN REPLY #12226 /* ~"None of them. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 18.1 20.1 25.2 26.1 27.1 28.0 29.0 30.0 31.0
  SAY #12227 /* ~"Like the Upper Planes, the Lower Planes are divided into lawful, chaotic, and neutral. Each of them varies in terms of horrors and what those horrors do to a traveler's spirit, and all of them are best avoided. Which of them would you like to hear of?"~ */
  IF ~~ THEN REPLY #12228 /* ~"The neutral planes."~ */ GOTO 25
  IF ~  Global("Aethel_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #12229 /* ~"The lawful planes."~ */ GOTO 28
  IF ~  Global("Aethel_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #12230 /* ~"The lawful planes."~ */ GOTO 29
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #12231 /* ~"The chaotic planes."~ */ GOTO 30
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #12232 /* ~"The chaotic planes."~ */ GOTO 31
  IF ~~ THEN REPLY #12233 /* ~"Tell me more of the planes of the Great Ring." ~ */ GOTO 18
  IF ~~ THEN REPLY #12234 /* ~"I had some other questions."~ */ GOTO 5
  IF ~~ THEN REPLY #12235 /* ~"None of them. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #12236 /* ~"The neutral planes, eh? They're vile and barely understandable, and they're more insidious on their own than you could ever imagine. Take Gehenna, for example: Four volcanoes in stages of dormancy floating in an infinite void, each of them somehow *alive,* and each of them wanting your soul by whatever means they can get it. Populate it with yugoloths - the worst of the fiends, in my opinion, and you've got the place. The plane of ultimate evil - at least, that's what they call it - is the Gray Waste, a no-place that drains color from your body and spirit, stealing away even your apathy - and it's the site of the worst battlegrounds in the war down there. Don't get me started... Then you've got Carceri on the chaotic side..."~ */
  IF ~~ THEN REPLY #12237 /* ~"Tell me about the war."~ */ GOTO 26
  IF ~~ THEN REPLY #12238 /* ~"Tell me about Carceri."~ */ GOTO 27
  IF ~~ THEN REPLY #12239 /* ~"Tell me of the rest of the Lower Planes."~ */ GOTO 24
  IF ~~ THEN REPLY #12240 /* ~"Tell me more of the planes of the Great Ring." ~ */ GOTO 18
  IF ~~ THEN REPLY #12241 /* ~"I had some other questions."~ */ GOTO 5
  IF ~~ THEN REPLY #12242 /* ~"That was all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 27.0
  SAY #12243 /* ~"Aye, the Blood War." At the name, your blood feels as if it freezes in your veins. Illborne doesn't seem to notice, wrapped up as he is in his memories. "Two armies of fiends smashing together pointlessly across the Lower Planes, slaughtering mindlessly in the name of law and chaos. They'll aggrandize it, of course, but in the end, it's about hate and stupid endeavor that aids none and harms far too many."~ */
  IF ~~ THEN REPLY #12244 /* ~"Tell me about Carceri."~ */ GOTO 27
  IF ~~ THEN REPLY #12245 /* ~"Tell me of the rest of the Lower Planes."~ */ GOTO 24
  IF ~~ THEN REPLY #12246 /* ~"Tell me more of the planes of the Great Ring." ~ */ GOTO 18
  IF ~~ THEN REPLY #12247 /* ~"I had some other questions."~ */ GOTO 5
  IF ~~ THEN REPLY #12248 /* ~"That was all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.0
  SAY #12249 /* ~"Ah, Carceri and its poisonous jungles, acid swamps, destructive waters, strung like a string of rotten pearls nestled within one another..." He pauses and looks at you carefully, again fixing you in place with his eyes. "Remember this, seeker: Carceri is a prison, home to the gehreleths, one of the most dangerous types of fiends there is. The strength of the prison is the strength of the captor, as strong as the prisoner lets it be. Destroy the prisonkeeper, and a body can escape the Red Prison. There is almost no other way out, not when the gates close themselves against you and watch you spin off into the vast space surrounding the orbs. Be wary of Carceri, traveler, for its bonds can be greater than flesh."~ */
  IF ~~ THEN REPLY #12250 /* ~"Tell me about the war."~ */ JOURNAL #28750 /* ~Candrian told me of the plane of Carceri, the Great Prison of the planes. He says that the only way to escape the prison is to be stronger than the prison keeper. He said that the bonds of the plane are greater than flesh.~ */ GOTO 26
  IF ~~ THEN REPLY #12251 /* ~"Tell me of the rest of the Lower Planes."~ */ JOURNAL #28750 /* ~Candrian told me of the plane of Carceri, the Great Prison of the planes. He says that the only way to escape the prison is to be stronger than the prison keeper. He said that the bonds of the plane are greater than flesh.~ */ GOTO 24
  IF ~~ THEN REPLY #12252 /* ~"Tell me more of the planes of the Great Ring." ~ */ JOURNAL #28750 /* ~Candrian told me of the plane of Carceri, the Great Prison of the planes. He says that the only way to escape the prison is to be stronger than the prison keeper. He said that the bonds of the plane are greater than flesh.~ */ GOTO 18
  IF ~~ THEN REPLY #12253 /* ~"I had some other questions."~ */ JOURNAL #28750 /* ~Candrian told me of the plane of Carceri, the Great Prison of the planes. He says that the only way to escape the prison is to be stronger than the prison keeper. He said that the bonds of the plane are greater than flesh.~ */ GOTO 5
  IF ~~ THEN REPLY #12254 /* ~"That was all I wanted to know. Farewell."~ */ JOURNAL #28750 /* ~Candrian told me of the plane of Carceri, the Great Prison of the planes. He says that the only way to escape the prison is to be stronger than the prison keeper. He said that the bonds of the plane are greater than flesh.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 24.1
  SAY #12255 /* ~"As much as I detest the order of the lawful Upper Planes, at least they present a modicum of goodness. Their lower planar counterparts, though... Acheron's a place of ricocheting cubes that never see an end to battle, swarming with the souls of dead humanoids. Baator..." he shivers involuntarily. "Baator is a place best avoided. Those fiends you slew over there were but the merest expression of the deviant corruption embodied in that soulless machine of order. All that is bad about bureaucracy and order originates from Baator, and it spreads like a stain across the hearts of mortals. Though there is some knowledge to be found there, it is rarely worth the spiritual rape the plane inflicts."~ */
  IF ~~ THEN REPLY #12256 /* ~"Tell me of the rest of the Lower Planes."~ */ GOTO 24
  IF ~~ THEN REPLY #12257 /* ~"Tell me more of the planes of the Great Ring." ~ */ GOTO 18
  IF ~~ THEN REPLY #12258 /* ~"I had some other questions."~ */ GOTO 5
  IF ~~ THEN REPLY #12259 /* ~"That was all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 24.2
  SAY #12260 /* ~"As much as I detest the order of the lawful Upper Planes, at least they present a modicum of goodness. Their lower planar counterparts, though... Acheron's a place of ricocheting cubes that never see an end to battle, swarming with the souls of dead humanoids. Baator..." he shivers involuntarily. "Baator is a place best avoided. Those baatezu - the fiends in the corner there - are but the merest expression of the deviant corruption embodied in that soulless machine of order. If you want more, talk to them, but remember: All that is bad about bureaucracy and order originates from Baator, and it spreads like a stain across the hearts of mortals. Though there is some knowledge to be found there, it is rarely worth the spiritual rape the plane inflicts."~ */
  IF ~~ THEN REPLY #12261 /* ~"Tell me of the rest of the Lower Planes."~ */ GOTO 24
  IF ~~ THEN REPLY #12262 /* ~"Tell me more of the planes of the Great Ring." ~ */ GOTO 18
  IF ~~ THEN REPLY #12263 /* ~"I had some other questions."~ */ GOTO 5
  IF ~~ THEN REPLY #12264 /* ~"That was all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 24.3
  SAY #12265 /* ~"With apologies to your companion," he gestures toward Fall-from-Grace, "the Abyss isn't someplace you should consider going. Where Baator's all orderly, the Abyss is full of chaos and change, and none of it's pleasant. When it becomes something that approximates normality, that's when you should be most wary of it. It's home to the tanar'ri, what most primes call 'demons', and they've got that name for a reason. They are, if you'll excuse me, my lady," and Grace nods her head, "unpredictable and murderous, and the few you can trust are few and far between. Again, my apologies, Lady Grace - you are, as far as I have been able to ascertain, one of those few."~ */
  IF ~~ THEN REPLY #12266 /* ~"Tell me of the rest of the Lower Planes."~ */ GOTO 24
  IF ~~ THEN REPLY #12267 /* ~"Tell me more of the planes of the Great Ring." ~ */ GOTO 18
  IF ~~ THEN REPLY #12268 /* ~"I had some other questions."~ */ GOTO 5
  IF ~~ THEN REPLY #12269 /* ~"That was all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 24.4
  SAY #12270 /* ~"The Abyss isn't someplace you should consider going. Where Baator's all orderly, the Abyss is full of chaos and change, and none of it's pleasant. When it becomes something that approximates normality, that's when you should be most wary of it. It's home to the tanar'ri, what most primes call 'demons,' and they've got that name for a reason. They are unpredictable and murderous, and the few you can trust are few and far between. The few I have met who I'd trust, I still don't trust entirely - they are creatures of chaos and evil incarnate, and if they're putting on a friendly face, who's to say it's not part of a larger agenda?"~ */
  IF ~~ THEN REPLY #12271 /* ~"Tell me of the rest of the Lower Planes."~ */ GOTO 24
  IF ~~ THEN REPLY #12272 /* ~"Tell me more of the planes of the Great Ring." ~ */ GOTO 18
  IF ~~ THEN REPLY #12273 /* ~"I had some other questions."~ */ GOTO 5
  IF ~~ THEN REPLY #12274 /* ~"That was all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 18.2 20.2
  SAY #12275 /* ~"There are two Boundary Planes to my mind, and they are diametrically opposed. One of them, Mechanus, is the very essence of law, a place where beliefs fit together, interlocking, turning, in a massive machine that is the entire plane. Some folks'd have it that the gears of Mechanus are the engine that drives the planes. The other plane is Limbo, a swirling morass of Chaos that follows no rules, none, and just when a body thinks he's classified its behavior, it goes and changes on him - or it doesn't. You just can't tell. I was in Limbo not too long ago..."~ */
  IF ~~ THEN REPLY #12277 /* ~"Tell me of your journey..."~ */ GOTO 33
  IF ~~ THEN REPLY #12278 /* ~"Tell me more of the planes of the Great Ring." ~ */ GOTO 18
  IF ~~ THEN REPLY #12279 /* ~"I had some other questions."~ */ GOTO 5
  IF ~~ THEN REPLY #12333 /* ~"That was all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #12280 /* ~He closes his eyes, remembering: "I had a githzerai guide with me, an anarch who could shape the illogical matter of the plane into forms of his desire. We had fought off the harrying of the slaadi, the chaos-creatures who call that plane home. It seemed there were more than usual, but then, one can never tell what's 'usual' in Limbo... but I digress. In the midst of all this chaos, we came across a series of huge, metal, interlocking cubes, like some sort of puzzle box. It wasn't something we had shaped, consciously or not, and we couldn't find a way inside. It was like... like a bastion of order within the confines of disorder, a seed of law. That is the best I can explain it."~ */
  IF ~~ THEN REPLY #12281 /* ~"Tell me more of the planes of the Great Ring." ~ */ JOURNAL #28751 /* ~Candrian told me of a puzzle box in the heart of Limbo, something that seemed to be a seed of law in the churning sea of chaos.~ */ GOTO 18
  IF ~~ THEN REPLY #12282 /* ~"I had some other questions."~ */ JOURNAL #28751 /* ~Candrian told me of a puzzle box in the heart of Limbo, something that seemed to be a seed of law in the churning sea of chaos.~ */ GOTO 5
  IF ~~ THEN REPLY #12283 /* ~"That was all I wanted to know. Farewell."~ */ JOURNAL #28751 /* ~Candrian told me of a puzzle box in the heart of Limbo, something that seemed to be a seed of law in the churning sea of chaos.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 18.3 20.3
  SAY #12284 /* ~"The Outlands are absolute neutrality. Probably the best place for a body to visit in the Outer Planes, outside of Sigil, if you don't want to have a plane's morality forced into your heart. Everything balances out in the Outlands - as it should be, for the plane that sits at the center of the Outer Planes. Powers' realms are scattered about here, and there are handfuls of 'gate towns' that open into the rest of the Outer Planes. The gate towns usually mirror the philosophy of the plane their gates open on to - and if the balance of belief isn't kept in the town, the town slips into the nearby plane. It's a bad situation for everyone, because few of the folks in the towns really *want* that change. But enough of the Outlands. What more would you know?"~ */
  IF ~~ THEN REPLY #12285 /* ~"Let's go back a few steps, to the overview. Tell me more of the planes in general." ~ */ GOTO 9
  IF ~~ THEN REPLY #12286 /* ~"Tell me more of the planes of the Great Ring." ~ */ GOTO 18
  IF ~~ THEN REPLY #12287 /* ~"I had some other questions."~ */ GOTO 5
  IF ~~ THEN REPLY #12288 /* ~"That was all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 8.2 9.2 11.4 16.1
  SAY #12289 /* ~He sighs, as if this reminded him of his bone-deep weariness. "Think of the Inner Planes as a globe. On the top pole, you have the Positive Material Plane. On the bottom, you have the Negative Material." He pauses. "Remind me to tell you of the Negative." His eyes turn inward, to some private horror. "From the interaction between the two springs all of the urge for existence and non-existence, death and life, actuality and nothing. From them spring the basic elemental planes - like Fire, Water, Air, and Earth - the para-elemental planes that lie between the four basic elements, and the quasi-elemental planes that come from the interaction of the four elements with the Positive and Negative."~ */
  IF ~~ THEN REPLY #12290 /* ~"Tell me of the Negative Material Plane."~ */ GOTO 36
  IF ~~ THEN REPLY #12291 /* ~"Tell me of the rest of the planes."~ */ GOTO 9
  IF ~~ THEN REPLY #12292 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #12293 /* ~"That's all I needed to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 8.4 9.4 35.0 40.0
  SAY #12294 /* ~His eyes cloud over. "I went to the Inner Planes to discover my true essence. I made the mistake of visiting the Negative Material Plane in order to understand my body's urge to decay and the cycle of death in life. I thought myself protected against the ill effects of the plane with my magic, but I was wrong. The blackness of infinite nothing pressed on my soul, and I was beset by shadows that sought to snuff out my very soul. I lost my way for a time - for an eternity - and nearly lost my existence. I could feel my essence falling away from me, and am even now half-gone. Never will I return."~ */
  IF ~  Global("Ntoken_Give","GLOBAL",0)
~ THEN REPLY #12295 /* ~"How did you survive?"~ */ DO ~GiveItemCreate("NToken",Protagonist,20,0,0)
SetGlobal("Ntoken_Give","GLOBAL",1)
~ JOURNAL #28752 /* ~Candrian told me of his trip into the Negative Material Plane, a place where existence falls away into nothing. ~ */ GOTO 37
  IF ~  Global("Ntoken_Give","GLOBAL",1)
~ THEN REPLY #12296 /* ~"How did you survive?"~ */ JOURNAL #28752 /* ~Candrian told me of his trip into the Negative Material Plane, a place where existence falls away into nothing. ~ */ GOTO 38
  IF ~~ THEN REPLY #12297 /* ~"Tell me of the other planes, then."~ */ JOURNAL #28752 /* ~Candrian told me of his trip into the Negative Material Plane, a place where existence falls away into nothing. ~ */ GOTO 9
  IF ~~ THEN REPLY #12298 /* ~"I had some other questions..."~ */ JOURNAL #28752 /* ~Candrian told me of his trip into the Negative Material Plane, a place where existence falls away into nothing. ~ */ GOTO 5
  IF ~~ THEN REPLY #12299 /* ~"I see. Farewell."~ */ JOURNAL #28752 /* ~Candrian told me of his trip into the Negative Material Plane, a place where existence falls away into nothing. ~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #12300 /* ~"How did I survive?" He smiles tightly. "With a piece of nothing that held back the nothing. Nothing can stop nothing, you know, and so I carried nothing in my hand to protect me. Do you plan to journey to the ultimate negation yourself? You have the smell of desperation about you, and so I make you this gift. Hold it in your hand when the shadows press in, and it should protect you and your friends somewhat, should they remain close to you. Heh." He passes you a small, black token that looks as if it has no dimensionality to it at all.~ */
  IF ~~ THEN REPLY #12301 /* ~"Thanks. Tell me more of the planes."~ */ GOTO 9
  IF ~~ THEN REPLY #12302 /* ~"I had more questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #12303 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY #12304 /* ~"I used the token I gave you and barely held on to my life. Without it, I should have perished entirely."~ */
  IF ~~ THEN REPLY #12305 /* ~"Tell me more of the planes."~ */ GOTO 9
  IF ~~ THEN REPLY #12306 /* ~"I had more questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #12307 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 8.3 9.3 11.5 16.2
  SAY #12308 /* ~"You want to know of the Prime, visit it. The boundless worlds of that plane have an infinite variety, as do the planes, but I cannot encapsulate them as I have here. Suffice it to say they are the birth of the Outer Planes, the children of the Inner, and they hold limitless potential within their boundaries."~ */
  IF ~~ THEN REPLY #12309 /* ~"Tell me more of the planes."~ */ GOTO 9
  IF ~~ THEN REPLY #12310 /* ~"I had more questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #12311 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 5.2
  SAY #12312 /* ~"I? I am fresh back from negation, and am trying to restore my essence before it slips away from me altogether."~ */
  IF ~~ THEN REPLY #12313 /* ~"Negation? What do you mean?"~ */ GOTO 36
  IF ~~ THEN REPLY #12314 /* ~"I see. I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #12315 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 5.3
  SAY #12316 /* ~"Unless the cosmos has shifted or we have been spun into the Mazes, I would say that we're in the Smoldering Corpse tavern."~ */
  IF ~~ THEN REPLY #12317 /* ~"What can you tell me of the patrons here?"~ */ GOTO 42
  IF ~~ THEN REPLY #12318 /* ~"Mazes? What do you mean?"~ */ GOTO 43
  IF ~~ THEN REPLY #12319 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #12320 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #12321 /* ~"I mind my own business here, seeker, for I spend too much time away not minding it. Speak to the bartender, if you would learn more of his customers."~ */
  IF ~~ THEN REPLY #12322 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #12323 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.1
  SAY #12324 /* ~"Aye, the Mazes, where the Lady dumps those who've displeased her." He makes a small semi-circle over his heart as he speaks the Lady's name. "If you'd know more of the Lady and the city, find a tout or some such guide."~ */
  IF ~~ THEN REPLY #12325 /* ~"Very well. I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #12326 /* ~"Very well. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 5.4
  SAY #12327 /* ~"I've seen no journals lately but for my own - and that has crumpled away into nothingness. My apologies."~ */
  IF ~~ THEN REPLY #12328 /* ~"No matter. I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #12329 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 5.5
  SAY #12330 /* ~"Pharod grew up to be a Collector? How long ago was this? When I set out last, he was but an officious stripling in one of the upper wards. Heh. Time DOES change some people. No, seeker, I don't know Pharod any more, I'm willing to bet."~ */
  IF ~~ THEN REPLY #12331 /* ~"Very well. I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #12332 /* ~"Very well. Farewell."~ */ EXIT
END
