// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ1041.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ1041~

IF ~  Global("Bei","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #6573 /* ~This re-animated, male corpse has the numbers "1041" carved into its forehead. Despite its taut, desiccated flesh, it is apparent that its features once had a rather 'exotic' cast to them. The zombie's lips have been stitched closed - most likely to prevent it from moaning incessantly - and it smells strongly of formaldehyde.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #6576 /* ~"So... seen anything interesting going on?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #6577 /* ~"So... seen anything interesting going on?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #6578 /* ~"I know you're not a zombie, you know. You're not fooling anyone."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6579 /* ~Use your Stories-Bones-Tell ability on the corpse.~ */ GOTO 2
  IF ~~ THEN REPLY #6580 /* ~Use your Stories-Bones-Tell ability on the corpse.~ */ GOTO 37
  IF ~~ THEN REPLY #6581 /* ~"It was great talking to you. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #9095 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #6574 /* ~The corpse continues to stare at you.~ */
  IF ~~ THEN REPLY #6582 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #6575 /* ~The corpse reels for a moment as the spirit revisits its one-time home. Its almond-shaped eyes become dark once more, a faint bronze cast creeping over the pale flesh. It straightens itself, brushing the dust off its clothes. 

At last noticing its caller, the ghost peers at you for a moment with curious eyes, then bows slightly.~ */
  IF ~~ THEN REPLY #6583 /* ~Bow in return.~ */ DO ~SetGlobal("Bei","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #9096 /* ~"I had some questions..."~ */ DO ~SetGlobal("Bei","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #9097 /* ~Leave the spirit.~ */ DO ~SetGlobal("Bei","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9060 /* ~The spirit smiles for a moment, as if pleased. He composes himself, standing with one hand behind him as he begins to speak in a soft, lilting tone:

"Suiang jianne shyr nan bye yih nan;
"Dong feng wu lih bay hua tsarn;
"Chuen tsarn daw syy sy fang jinn;
"Lah Jiuh cherng huei ley shyy gan."

That being said, he appears content to stand and wait patiently for your reply.~ */
  IF ~~ THEN REPLY #9098 /* ~"I... er..."~ */ GOTO 5
  IF ~~ THEN REPLY #9099 /* ~"I have no idea what you are saying... can you understand my words at all?"~ */ GOTO 5
  IF ~~ THEN REPLY #9100 /* ~"I cannot understand you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #9061 /* ~You open your mouth to voice a question, but before you can begin the spirit begins to speak in a soft, lilting tone:

"Suiang jianne shyr nan bye yih nan;
"Dong feng wu lih bay hua tsarn;
"Chuen tsarn daw syy sy fang jinn;
"Lah Jiuh cherng huei ley shyy gan."

That being said, he appears content to stand and wait patiently for your reply.~ */
  IF ~~ THEN REPLY #9101 /* ~"I... er..."~ */ GOTO 5
  IF ~~ THEN REPLY #9102 /* ~"I have no idea what you are saying... can you understand my words at all?"~ */ GOTO 5
  IF ~~ THEN REPLY #9103 /* ~"I cannot understand you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 3.1 4.0 4.1
  SAY #9062 /* ~The spirit pauses for a moment, as if to think. He then begins to speak again in a thickly accented, yet deeply refined voice. "You must forgive me, honorable sir. It has been no small length of time since I have had to speak your language. No doubt my spirit has been summoned here to answer your questions; what is it you would know of me?"~ */
  IF ~~ THEN REPLY #9104 /* ~"Who are you?"~ */ GOTO 6
  IF ~~ THEN REPLY #9105 /* ~"Where are you from?"~ */ GOTO 7
  IF ~~ THEN REPLY #9106 /* ~"How did you end up here? As a zombie, I mean?"~ */ GOTO 8
  IF ~~ THEN REPLY #9107 /* ~"Where are you... where your spirit resides... now?"~ */ GOTO 11
  IF ~~ THEN REPLY #9108 /* ~"What do you know of this place?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #9109 /* ~"Do you know someone named Pharod?"~ */ GOTO 10
  IF ~~ THEN REPLY #9110 /* ~"Nothing, never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 14.0
  SAY #9063 /* ~"Who I am is a difficult question to answer... who I *was* is not. I was known as Zhuang Bei, tutor and bodyguard to Liu Xixi, daughter of Censor Chi'an.~ */
  IF ~~ THEN REPLY #9111 /* ~"Tutor *and* bodyguard?"~ */ GOTO 12
  IF ~~ THEN REPLY #9112 /* ~"Hmm. Sounds impressive."~ */ GOTO 13
  IF ~~ THEN REPLY #9113 /* ~"I see. I had more questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #9114 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 14.1
  SAY #9064 /* ~"I was from a place called Shou Lung... a place I once regarded as the center of the Universe." He seems to find mild amusement at the thought. "So many places, so many worlds. I once considered myself a truly learned man, yet truly knew so little when I died..."~ */
  IF ~~ THEN REPLY #9115 /* ~"How did you arrive from this 'Shou Lung'?"~ */ GOTO 16
  IF ~~ THEN REPLY #9116 /* ~"I see. I had more questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #9117 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.2 14.2
  SAY #9065 /* ~"I was murdered by one of the men I fell into this world with. I had been hunting him in this city for many, many weeks - it was during this time that I learned your language - but he found me first. A professional assassin, he caught me unawares and slew me as I slept."~ */
  IF ~~ THEN REPLY #9118 /* ~"Fell into this world?"~ */ GOTO 16
  IF ~~ THEN REPLY #9119 /* ~"Hunting assassins?"~ */ GOTO 16
  IF ~~ THEN REPLY #9120 /* ~"I see, but do you know how your corpse come to be working here?"~ */ GOTO 17
  IF ~~ THEN REPLY #9121 /* ~"You speak well for one with so little time to learn a language."~ */ GOTO 18
  IF ~~ THEN REPLY #9122 /* ~"I see. I had more questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #9123 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.4 14.4
  SAY #9066 /* ~"This building? Nothing at all; I had heard of it, knew my corpse was to serve here, but that is all."

"I know almost as little about this great city, 'Sigil.' My weeks here were spent searching for the men I fell into this world with and learning the language; though it pained me, I had time for little else. I could have learned so much from the myriad wonders of such a place..."~ */
  IF ~~ THEN REPLY #9124 /* ~"Your corpse was to serve here? How did that come about?"~ */ GOTO 17
  IF ~~ THEN REPLY #9125 /* ~"Fell into this world?"~ */ GOTO 16
  IF ~~ THEN REPLY #9126 /* ~"You speak well for one with so little time to learn a language."~ */ GOTO 18
  IF ~~ THEN REPLY #9127 /* ~"I see. I had more questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #9128 /* ~"Very well. Perhaps we will speak again."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.5 14.5
  SAY #9067 /* ~"No, the name means nothing to me. I am sorry I could not aid you in this."~ */
  IF ~~ THEN REPLY #9129 /* ~"I understand. I had more questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #9130 /* ~"Very well. Perhaps we will speak again."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.3 14.3
  SAY #9068 /* ~The spirit seems pained for a moment.

"I... My spirit resides in the realm of the Illustrious Magistrate, Yen-Wang-Yeh: the Palace of Judgement."~ */
  IF ~~ THEN REPLY #9131 /* ~"Is something wrong? Is it such a bad place?"~ */ GOTO 15
  IF ~~ THEN REPLY #9132 /* ~"I understand. I had more questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #9133 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.0 16.1
  SAY #9069 /* ~"Yes; it is not so uncommon where I hail from. It was my duty to stay by Miss Liu at all times, not only to keep her from harm, but to educate her. I was regarded as a scholar of some repute as well as a swordsman, you see. Perhaps I would have served her better were I a better swordsman, though..."~ */
  IF ~~ THEN REPLY #9134 /* ~"Served her better? Did you fail her somehow?"~ */ GOTO 16
  IF ~~ THEN REPLY #9135 /* ~"Perhaps. I had more questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #9136 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.1
  SAY #9070 /* ~"Impressive? Yes, perhaps too much so for me. I... I failed Miss Liu and the Censor in my task."~ */
  IF ~~ THEN REPLY #9137 /* ~"How so?"~ */ GOTO 16
  IF ~~ THEN REPLY #9138 /* ~"I had more questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #9139 /* ~"I see. Perhaps we will speak again."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.2 7.1 8.4 9.3 10.0 11.1 12.1 13.1 15.2 17.1 18.0 19.0 20.1 21.1 22.0 23.1 24.0 25.0 26.0 27.1 28.0 29.0 30.0 31.2 32.1 33.2 34.1 35.2 36.0 37.0 38.1
  SAY #9071 /* ~The spirit nods, an unexpectedly graceful movement for a wizened corpse to make. "Please, ask what you will."~ */
  IF ~~ THEN REPLY #9140 /* ~"Who are you?"~ */ GOTO 6
  IF ~~ THEN REPLY #9141 /* ~"Where are you from?"~ */ GOTO 7
  IF ~~ THEN REPLY #9142 /* ~"How did you end up here? As a zombie, I mean?"~ */ GOTO 8
  IF ~~ THEN REPLY #9143 /* ~"Where are you... where your spirit resides... now?"~ */ GOTO 11
  IF ~~ THEN REPLY #9144 /* ~"What do you know of this place?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #9145 /* ~"Do you know someone named Pharod?"~ */ GOTO 10
  IF ~~ THEN REPLY #9146 /* ~"What was that you spoke when you first appeared?"~ */ GOTO 26
  IF ~~ THEN REPLY #9147 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.0
  SAY #9072 /* ~"Well, you see..." The spirit stops for a moment to think, rubbing the corpse's withered hands together. "When I arrived, after a short period of waiting I was to be ushered to my final, *true* destination. However, there was some sort of commotion during my escort through the Palace, and I was left alone in a side room with the promise that I would be attended to in a moment."~ */
  IF ~~ THEN REPLY #9148 /* ~"And...?"~ */ GOTO 19
  IF ~~ THEN REPLY #9149 /* ~"Final destination? Where were you to be sent?"~ */ GOTO 20
  IF ~~ THEN REPLY #9150 /* ~"Wait... I had other questions, before you continue."~ */ GOTO 14
  IF ~~ THEN REPLY #9151 /* ~"Perhaps I'll hear the rest another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 7.0 8.0 8.1 9.1 12.0 13.0
  SAY #9073 /* ~"I will tell you the entire tale. As the tutor and bodyguard of Liu Xixi, I am of course charged with both her education and defense. One fair evening we were standing on a balcony over the Courtyard, where I was teaching her about the various constellations."~ */
  IF ~~ THEN REPLY #9152 /* ~"Please, go on."~ */ GOTO 21
  IF ~~ THEN REPLY #9153 /* ~"Tutor *and* bodyguard?"~ */ GOTO 12
  IF ~~ THEN REPLY #9154 /* ~"Perhaps I'll hear the rest another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.2 9.0
  SAY #9074 /* ~"Ah, that. I was approached one night by a young woman on the street; she was from an organization called the Dustmen, the same that oversees this complex."
"She proposed to me that, in return for a small sum of money, that my corpse could be... used... here upon my demise."~ */
  IF ~~ THEN REPLY #9155 /* ~"And that didn't seem a bit odd to you?"~ */ GOTO 22
  IF ~~ THEN REPLY #9156 /* ~"I see. Another question, if I may..."~ */ GOTO 14
  IF ~~ THEN REPLY #9157 /* ~"That's all wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 8.3 9.2
  SAY #9075 /* ~"Linguistics, in fact, is an area of great interest to me. When I became a scholar I found I could learn new tongues with little trouble at all."~ */
  IF ~~ THEN REPLY #9158 /* ~"That would explain things. Another question..."~ */ GOTO 14
  IF ~~ THEN REPLY #9159 /* ~"I understand. Thank you for speaking with me. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.0 20.0
  SAY #9076 /* ~"Well, you see... no one ever returned for me. I waited quietly for what seemed like days, but it was to no avail. I eventually left the room to wander the Palace, hoping to find someone to direct me..." He sighs softly, the faint scent of embalming fluid carried with his exhalation. "There are 9,001 rooms here; in each one I have passed through I was merely directed to another. I seem to have fallen between the cracks, for the time being."~ */
  IF ~~ THEN REPLY #9160 /* ~"I see. I had another question, though..."~ */ GOTO 14
  IF ~~ THEN REPLY #9161 /* ~"Anything I could do to help?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bei_1","GLOBALGood",1)
~ GOTO 24
  IF ~~ THEN REPLY #9162 /* ~"Poor fool... I wonder how long they'll let you wander!"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Bei_1","GLOBALGood",-1)
~ GOTO 25
  IF ~~ THEN REPLY #9163 /* ~"I wish you good luck. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.1
  SAY #9077 /* ~"I couldn't say. It is all so very frustrating!" He pauses for a moment to regain his composure, the stiffened joints and tendons of the cadaver creaking softly as they relax once more. ~ */
  IF ~~ THEN REPLY #9164 /* ~"Please continue your tale."~ */ GOTO 19
  IF ~~ THEN REPLY #9165 /* ~"I can imagine... I had another question..."~ */ GOTO 14
  IF ~~ THEN REPLY #9166 /* ~"Perhaps I'll hear the rest another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 16.0
  SAY #9078 /* ~"Of course. As we stood there, two assassins suddenly burst down from the rooftop to the balcony, most likely there to slay or kidnap Miss Liu. Shouting for the guards, I drew my blade and leapt to her defense. In the ensuing battle, the balcony's railing was shattered and the four of us fell into the Jade Portal."~ */
  IF ~~ THEN REPLY #9167 /* ~"The what? Jade Portal?"~ */ GOTO 23
  IF ~~ THEN REPLY #9168 /* ~"Wait... I had other questions, before you continue."~ */ GOTO 14
  IF ~~ THEN REPLY #9169 /* ~"Perhaps I'll hear the rest another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.0
  SAY #9079 /* ~"Perhaps at first... the idea is a bit macabre after all. But after speaking with her for some time, I realized that they - the Dustmen - feel much the same way I do regarding death. My body? A vehicle only, nothing more. I believe their 'True Death' to be the exalted state that I, personally, seek to attain... total release and detachment from the material world. Should my corpse, having served its purpose as my mortal shell, manage to serve some small purpose here, so much the better." The spirit smiles at you politely.~ */
  IF ~~ THEN REPLY #9170 /* ~"I see your reasoning. Another question..."~ */ GOTO 14
  IF ~~ THEN REPLY #9171 /* ~"Interesting. I had best be going now; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0
  SAY #9080 /* ~"Oh! Pardon the assumption on my part... the Jade Portal is a circular pool that lies in the Courtyard. Paved with tiles of green and white soapstone, it is called the Portal because it is said, at times, glimpses of another place appear reflected in its shimmering waters."~ */
  IF ~~ THEN REPLY #9172 /* ~"I see. Please, continue your story."~ */ GOTO 27
  IF ~~ THEN REPLY #9173 /* ~"Before you go on, I had other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #9174 /* ~"That's all I wished to know for now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.1
  SAY #9081 /* ~"Your offer is too kind. I am afraid, however, that there is nothing you can do... I am sure that, in time, I will be sped on my way. Again, though, thank you."~ */
  IF ~~ THEN REPLY #9175 /* ~"Of course. Say, I had another question..."~ */ GOTO 14
  IF ~~ THEN REPLY #9176 /* ~"No worries. I had best leave, though. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 19.2 33.1 35.1
  SAY #9082 /* ~The spirit stares at you coldly, ghost-lights burning deep within the corpse's eyes; you seem to have offended him.~ */
  IF ~~ THEN REPLY #9177 /* ~"My apologies. May I ask you something else?"~ */ GOTO 14
  IF ~~ THEN REPLY #9178 /* ~Walk off, leave the spirit floating there.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 14.6
  SAY #9083 /* ~"Oh, that... ah... it was a poem. Difficult to translate. Did you have another question, perhaps?" He smiles at you uneasily.~ */
  IF ~~ THEN REPLY #9179 /* ~"Yes... yes, I did."~ */ GOTO 14
  IF ~~ THEN REPLY #9180 /* ~"No... but I think I'd like to know more about this poem."~ */ GOTO 28
  IF ~~ THEN REPLY #9181 /* ~"No. As a matter of fact, I think I'll be leaving. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.0
  SAY #9084 /* ~"As I was saying, we fell into the Jade Portal. I had never imagined it actually *was* a portal in any sense of the word, but surely enough it was! I suddenly found myself lying in an unfamiliar alleyway, my leg broken. I reoriented myself only in time to see the assassins fleeing, Liu Xixi tossed over one of their shoulders."~ */
  IF ~~ THEN REPLY #9182 /* ~"Strange indeed. Go on, please."~ */ GOTO 31
  IF ~~ THEN REPLY #9183 /* ~"Oh. Before you go on, I had other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #9184 /* ~"I see. Thank you, but I'd best take my leave now."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #9085 /* ~"Very well." He thinks for a moment, tapping the ends of the corpse's long, bony fingers together. Soon, he begins to speak once more in a steady, measured rhythm:

"It is difficult to meet as it is difficult to part.
"The north wind has weakened; hundreds of flowers fade away.
"When the Spring worms die, the silk shall never come again.
"When the candle wax becomes ash, tears shall stop."

He smiles at you politely. ~ */
  IF ~~ THEN REPLY #9185 /* ~"Ah... I had another question."~ */ GOTO 14
  IF ~~ THEN REPLY #9186 /* ~"Interesting. What does it mean?"~ */ GOTO 29
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #9187 /* ~"So you're saying that I should have left your spirit alone? Have I offended you, calling you here?"~ */ GOTO 30
  IF ~~ THEN REPLY #9188 /* ~"Oh. I thank you for explaining that. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY #9086 /* ~"Well, I am ashamed to say it was a subtle attempt at saying... well, saying that perhaps you'd best let the spirits of the dead alone. I no longer desire to have any part in this..." The spirit makes a sweeping gesture to indicate everything around him. "...world."~ */
  IF ~~ THEN REPLY #9189 /* ~"Hmm. I see. I had something else to ask of you."~ */ GOTO 14
  IF ~~ THEN REPLY #9190 /* ~"I understand. Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.2
  SAY #9087 /* ~"Ah... well... no. I had hoped not to be so direct; avoid a confrontation, you see. It is only that I no longer desire to have any part in this..." The spirit makes a sweeping gesture to indicate everything around him. "...world."~ */
  IF ~~ THEN REPLY #9191 /* ~"Hmm. I see. I had something else to ask of you..."~ */ GOTO 14
  IF ~~ THEN REPLY #9192 /* ~"I understand. Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 27.0
  SAY #9088 /* ~"Well, that is mostly all. I limped about painfully until I found someone to heal my leg; they took what little coin I had as payment. From that healer and others I learned the tongue of the people here, all the while scouring the place for the two assassins and my charge."~ */
  IF ~~ THEN REPLY #9193 /* ~"You never found them, then?"~ */ GOTO 32
  IF ~~ THEN REPLY #9194 /* ~"Hmm. You know, it's odd how quickly you were able to pick up the language..."~ */ GOTO 38
  IF ~~ THEN REPLY #9195 /* ~"Oh. Before you go on, I had other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #9196 /* ~"I'll have to hear the rest another time; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0 38.0
  SAY #9089 /* ~"I hunted down one of them, but he would not speak. I executed him and kept his head in a silk bag, so that I could bring it back for the Censor when I returned his daughter to him." He frowns for a moment before he continues. "The other assassin... eluded me. He did more than that, in fact; he slew me before I could kill him and rescue my charge. Sad, but it is all behind me, now."~ */
  IF ~~ THEN REPLY #9197 /* ~"Would you have known how to return to your land, had you rescued this... 'Xi-xi'?"~ */ GOTO 33
  IF ~~ THEN REPLY #9198 /* ~"Interesting story. I had more questions, though..."~ */ GOTO 14
  IF ~~ THEN REPLY #9199 /* ~"Fascinating. I had best leave you be, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #9090 /* ~"No, but I am confident I would have found a way. A moot point now, really."~ */
  IF ~~ THEN REPLY #9200 /* ~"I wonder if they are still in the city. Perhaps I could find and help this girl."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bei_2","GLOBALGood",1)
~ GOTO 34
  IF ~~ THEN REPLY #9201 /* ~"It certainly seems easy for you to just not care about your duties because you're dead. I don't know if I could just let something like that go."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Bei_1","GLOBALLaw",-1)
~ GOTO 25
  IF ~~ THEN REPLY #9202 /* ~"Interesting. Let me ask you something else..."~ */ GOTO 14
  IF ~~ THEN REPLY #9203 /* ~"Hmm. I'll leave you, now. Luck to you."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #9091 /* ~"Your offer marks you as a noble man... however, no less than seventy-five years have passed since I was slain. The man who assassinated me is long dead by now, and most likely Xixi as well."~ */
  IF ~~ THEN REPLY #9204 /* ~~ */ GOTO 35
  IF ~~ THEN REPLY #9205 /* ~"Hmm. No matter, then. I had another question..."~ */ GOTO 14
  IF ~~ THEN REPLY #9206 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #9092 /* ~"The assassin would have features similar to mine, and a Lotus Blossom tattooed upon his brow." Seeing your confusion, he adds "It's a sort of flower, with seven petals. Liu Xixi is a young girl; only fourteen years of age. Perhaps she or the assassin would know where the way back was, and how to activate it again."~ */
  IF ~~ THEN REPLY #9207 /* ~"If I see her, I will do my best to aid her in your memory."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bei_3","GLOBALGood",1)
SetGlobal("Know_Xixi","GLOBAL",1)
~ GOTO 36
  IF ~~ THEN REPLY #9208 /* ~"Never mind. I don't have time for this."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Bei_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Bei_2","GLOBALLaw",-1)
SetGlobal("Know_Xixi","GLOBAL",1)
~ GOTO 25
  IF ~~ THEN REPLY #9209 /* ~"All right. I had another question..."~ */ DO ~SetGlobal("Know_Xixi","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #9210 /* ~"That is all I need. Farewell."~ */ DO ~SetGlobal("Know_Xixi","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #9093 /* ~"You are a kind and honorable man. Do not do it for me, however... it is the girl and the father you help most greatly."~ */
  IF ~~ THEN REPLY #9211 /* ~"Very well. I had another question..."~ */ GOTO 14
  IF ~~ THEN REPLY #9212 /* ~"I understand. Farewell, spirit."~ */ EXIT
END

IF ~  Global("Bei","GLOBAL",1)
~ THEN BEGIN 37 // from: 0.4
  SAY #9094 /* ~"I certainly did not expect to see you again." The spirit bows politely, but his expression remains blank. "What is it you would have of me?"~ */
  IF ~~ THEN REPLY #9213 /* ~"A question..."~ */ GOTO 14
  IF ~~ THEN REPLY #9214 /* ~"Nothing; I shall leave you be."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 31.1
  SAY #9718 /* ~"Linguistics, in fact, is an area of great interest to me. When I became a scholar I found I could learn new tongues with little trouble at all."~ */
  IF ~~ THEN REPLY #9719 /* ~"That would explain things. So you never found the assassins?"~ */ GOTO 32
  IF ~~ THEN REPLY #9720 /* ~"I see. Let me ask you something else, now..."~ */ GOTO 14
  IF ~~ THEN REPLY #9721 /* ~"I understand. Thank you for speaking with me. Farewell."~ */ EXIT
END
