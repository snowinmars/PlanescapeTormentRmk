// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSADJULI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSADJULI~

IF ~  Global("SadJuli","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2982 /* ~This dark-haired young woman is staring listlessly off into space, sighing miserably and occasionally picking at the seams of her green velvet gown. It's difficult to discern whether she's depressed or simply bored.~ */
  IF ~~ THEN REPLY #2984 /* ~"Greetings..."~ */ DO ~SetGlobal("SadJuli","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #2983 /* ~Leave her be.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #40226 /* ~She gives you only the briefest of glances before staring off into the distance once more. "Greetings, yes... I am named Juliette. How may I... oh, never thou mind. Leave me be, please." She gives an exasperated sigh.~ */
  IF ~~ THEN REPLY #40280 /* ~"What's wrong?"~ */ GOTO 2
  IF ~~ THEN REPLY #40281 /* ~"I had some questions, first..."~ */ GOTO 24
  IF ~~ THEN REPLY #40282 /* ~"All right; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 35.0
  SAY #40227 /* ~"Oh, nothing at all. Only that I spend my days gazing into the face of mediocrity, seeing if anything can erase its dreadful, tedious passage."~ */
  IF ~~ THEN REPLY #40283 /* ~"Is your life so tedious?"~ */ GOTO 3
  IF ~~ THEN REPLY #40284 /* ~"I see. I had some questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #40285 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 26.0
  SAY #40228 /* ~"Alas, it is." She sighs, closing her eyes and massaging her temples. "Dreadfully boring!"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #40286 /* ~"Perhaps I could make it less boring for you, my lady."~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #40287 /* ~"I'm certain I could add some excitement to your life..."~ */ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #40288 /* ~"I'm certain I could add some excitement to your life..."~ */ GOTO 5
  IF ~~ THEN REPLY #40289 /* ~"I see. I had some questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #40290 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1
  SAY #40229 /* ~"No, no... 'tis kind of thee to offer, though. I am already with a man, sir, and I do love him dearly. 'Tis just that I wish..." She taps her finger against her chin. "...something *more* of our liaison."~ */
  IF ~~ THEN REPLY #66195 /* ~"Is the relationship lacking, then?"~ */ GOTO 7
  IF ~~ THEN REPLY #66196 /* ~"There's a problem with the relationship?"~ */ GOTO 8
  IF ~~ THEN REPLY #66197 /* ~"I see. I had some questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #66198 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY #40230 /* ~She frowns at you and rolls her eyes. "Doubtful, at best. I am already with a man, sir, and I do love him dearly. 'Tis just that I wish..." She taps her finger against her chin. "...something *more* of our liaison."~ */
  IF ~~ THEN REPLY #66199 /* ~"Is the relationship lacking, then?"~ */ GOTO 7
  IF ~~ THEN REPLY #66200 /* ~"There's a problem with the relationship?"~ */ GOTO 8
  IF ~~ THEN REPLY #66201 /* ~"I see. I had some questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #66202 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #40231 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 5.0
  SAY #40232 /* ~"The only thing it *lacks* is excitement, sir. Our families took the news of our courtship splendidly, his siblings love my siblings, and our friends think our union to be blessed by the powers themselves. All fine and good, but things are going..." She frowns. "...so *smoothly.* 'Tis not right to have such a trouble-free courtship."~ */
  IF ~~ THEN REPLY #66747 /* ~"I don't know about that..."~ */ GOTO 10
  IF ~~ THEN REPLY #66748 /* ~"I see. I had some questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #66749 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 5.1
  SAY #40233 /* ~"Yes, there is a problem..." She huffs. "...in that there are no problems to speak of! Our families took the news of our courtship splendidly, his siblings love my siblings, and our friends think our union to be blessed by the powers themselves. All fine and good, but things are going..." She frowns. "...so *smoothly.* 'Tis not right to have such a trouble-free courtship."~ */
  IF ~~ THEN REPLY #66750 /* ~"I don't know about that..."~ */ GOTO 10
  IF ~~ THEN REPLY #66751 /* ~"I see. I had some questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #66752 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #40234 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 8.0
  SAY #40235 /* ~"Dost thou not? Hast thou ever had such a courtship?" She glances briefly at you. "T'would seem that thy life is filled with a variety of problems, judging by the pallor of thy skin."~ */
  IF ~~ THEN REPLY #66203 /* ~"It's not something I care to speak of..."~ */ GOTO 11
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #40298 /* ~"I can't remember any courtships I have had, really."~ */ GOTO 11
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #40299 /* ~"I can't remember any courtships I have had. The remnants of the ones I have encountered suggest that I may have had some problems."~ */ GOTO 11
  IF ~~ THEN REPLY #40300 /* ~"I see. I had some questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #40301 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1 10.2
  SAY #40236 /* ~"'Tis just that all my friends have such interesting relationships... ones fraught with turmoil, feuding families, daggers at one another's backs, poison, mad siblings, and irate fathers with large swords. I have a lover whose family loves me and whom the world loves." She sighs again. "A great source of annoyance. How I wish I could formulate some way to spice things up..."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 427
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40302 /* ~"That doesn't sound wise. Relish what you have."~ */ GOTO 12
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40303 /* ~"What did you have in mind?"~ */ GOTO 13
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40304 /* ~"I see. I had some questions..."~ */ GOTO 24
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40305 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #40237 /* ~"I wish to experience troubles, though. I wish to experience the up and downs of courtship... but with him, no other." She sighs. "Ah, such a thing is love. It can be as dull as a club, and is of no use to an aspiring Sensate."~ */
  IF ~~ THEN REPLY #40307 /* ~"What did you have in mind to spice things up?"~ */ GOTO 13
  IF ~~ THEN REPLY #40308 /* ~"An aspiring Sensate?"~ */ GOTO 25
  IF ~~ THEN REPLY #40309 /* ~"I see. I had some questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #40310 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2 12.0
  SAY #40238 /* ~"I am not sure. Some element of danger. Or jealousy. Something *intense.*"~ */
  IF ~~ THEN REPLY #40311 /* ~"Why don't you have an affair?"~ */ GOTO 14
  IF ~~ THEN REPLY #40312 /* ~"Why don't you make up some fake love letters from a hidden affair?"~ */ GOTO 19
  IF ~~ THEN REPLY #40313 /* ~"I can pretend to be a jealous suitor, if you want."~ */ GOTO 21
  IF ~~ THEN REPLY #40314 /* ~"I see. I had some questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #40315 /* ~"Good luck. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #40239 /* ~She chews her lip. "Never could I have a *true* affair, for I love him too much! But perhaps... I could have a false one?" She looks you up and down critically. "Thou dost appear to be no stranger to dangerous behavior. Art thou interested in becoming a suitor?"~ */
  IF ~~ THEN REPLY #40316 /* ~"Yes; I'll do it."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #40317 /* ~"What's in it for me?"~ */ GOTO 15
  IF ~~ THEN REPLY #40318 /* ~"No... but I have some questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #40319 /* ~"No thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1 22.1
  SAY #40240 /* ~Juliette frowns. "My company and my gratitude will be enough."~ */
  IF ~~ THEN REPLY #40320 /* ~"All right; I'll do it, then."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #40321 /* ~"No, it won't."~ */ GOTO 16
  IF ~~ THEN REPLY #40322 /* ~"Forget it. I have some questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #40323 /* ~"No thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #40241 /* ~Her frown deepens at this complication. "What didst thou have in mind... that does *not* involve touching me?"~ */
  IF ~~ THEN REPLY #40324 /* ~"Don't flatter yourself any more than it takes to make me angry. I want some information."~ */ DO ~SetGlobal("Juli_Info","AR0605",1)
~ GOTO 17
  IF ~~ THEN REPLY #40325 /* ~"I want some information."~ */ DO ~SetGlobal("Juli_Info","AR0605",1)
~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #40242 /* ~Juliette mulls it over, the nods. "Very well. I shall deliver once *thou* dost deliver. Dost thou understand?"~ */
  IF ~~ THEN REPLY #40326 /* ~"Agreed."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #40327 /* ~"No; that won't do it."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY #40243 /* ~"Then we have reached an impasse. Art thou certain thou dost not wish to reconsider?"~ */
  IF ~~ THEN REPLY #40328 /* ~"All right... I'll do it."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #40329 /* ~"No, sorry. I had some questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #40330 /* ~"No. Farewell, Juliette."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.1
  SAY #40244 /* ~Juliette's eyes brighten. "Excellent notion! Most excellent!" She suddenly frowns. "But he knows my handwriting... wilt thou write some for me?"~ */
  IF ~~ THEN REPLY #40331 /* ~"Not my sort of thing. I can find you some, though."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #40332 /* ~"Actually, forget it. I had some questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #40333 /* ~"I'd rather not. Farewell, Juliette."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #40245 /* ~"Oh, wouldst thou? Excellent! When thou dost find some, please give them to my love, Montague... he may be found within the Civic Festhall. As for the letters... please try Scofflaw Penn. He runs a print shop in the Lower Ward. I thank thee!"~ */
  IF ~  Global("Montague_Problem","GLOBAL",1)
!Dead("Montagu")
~ THEN REPLY #66206 /* ~"Wait... Montague? There's a problem. He won't speak with me."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",6)
SetGlobal("SadJuli","GLOBAL",3)
~ JOURNAL #66208 /* ~Juliette had asked me to deliver some 'false' love-letters to her lover, Montague. I explained to her that Montague had become hostile towards me and so wouldn't speak to me.~ */ GOTO 43
  IF ~  Global("Montague_Problem","GLOBAL",1)
Dead("Montagu")
~ THEN REPLY #66207 /* ~"Wait... Montague? There's a problem... he's been killed."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",7)
SetGlobal("SadJuli","GLOBAL",2)
~ JOURNAL #66209 /* ~Juliette had asked me to deliver some 'false' love-letters to her lover, Montague. I explained to Juliette that Montague had been killed.~ */ GOTO 50
  IF ~  Global("Montague_Problem","GLOBAL",0)
~ THEN REPLY #40334 /* ~"Of course. Farewell."~ */ JOURNAL #39456 /* ~I have agreed to deliver some 'false' love-letters to a man named Montague for her lover, Juliette, in order to make him think she's having an affair - apparently, she's not satisfied with the level of excitement in their relationship. As soon as I can find some letters, I'm to take them to him at the Civic Festhall as 'proof' of her affair. Juliette suggested I speak to Scofflaw Penn, who I should be able to find in his print shop in the Lower Ward.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.2
  SAY #40246 /* ~Juliette glances at you, then scoffs. "Oh, I highly doubt th- hmm. Actually, that idea 'tis not half as addled as I had first thought. Thou dost certainly look *dangerous* enough." She looks you in the eye, as if appraising a horse. "Art thou as rugged and tough as thy appearance would indicate?"~ */
  IF ~~ THEN REPLY #40335 /* ~"They don't make them any tougher than me, I assure you."~ */ GOTO 22
  IF ~~ THEN REPLY #40336 /* ~"Yes, I am."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1
  SAY #40247 /* ~"Thou shalt do this for me, then?"~ */
  IF ~~ THEN REPLY #40337 /* ~"Yes, I'll do it."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #40338 /* ~"Well, what's in it for me?"~ */ GOTO 15
  IF ~~ THEN REPLY #40339 /* ~"Actually... no. But I have some questions..."~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 14.0 15.0 17.0 18.0 22.0
  SAY #40248 /* ~"Excellent! My love, Montague, may be found within the Civic Festhall. I thank thee!"~ */
  IF ~  Global("Montague_Problem","GLOBAL",1)
!Dead("Montagu")
~ THEN REPLY #66210 /* ~"Wait... Montague? There's a problem. He won't speak with me."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",6)
SetGlobal("SadJuli","GLOBAL",3)
~ JOURNAL #66213 /* ~Juliette had asked me to play the jealous suitor to her lover, Montague. I explained to her that Montague had become hostile towards me and so wouldn't speak to me.~ */ GOTO 43
  IF ~  Global("Montague_Problem","GLOBAL",1)
Dead("Montagu")
~ THEN REPLY #66211 /* ~"Wait... Montague? There's a problem... he's been killed."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",7)
SetGlobal("SadJuli","GLOBAL",2)
~ JOURNAL #66214 /* ~Juliette had asked me to play the jealous suitor to her lover, Montague. I explained to Juliette that Montague had been killed.~ */ GOTO 50
  IF ~  Global("Montague_Problem","GLOBAL",0)
~ THEN REPLY #40341 /* ~"Of course. I'll go speak to him... farewell."~ */ JOURNAL #39455 /* ~I have agreed to pretend to be a jealous suitor of Juliette, one of the prostitutes at the Brothel of Slating Intellectual Lusts. I am to find her lover, Montague, in the Civic Festhall, and demand that he relinquish her to me.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 1.1 2.1 3.3 4.2 5.2 7.1 8.1 10.3 11.3 12.2 13.3 14.2 15.2 18.1 19.1 22.2 26.1 27.1 28.0 29.1 30.0 31.0 32.0 33.1 34.0 35.1 38.0 39.1 39.2 40.0 40.1 42.0 42.1 43.1 43.2 46.0 47.0 48.0 49.0
  SAY #40249 /* ~Juliette rolls her eyes, "Oh, go on, if thou must."~ */
  IF ~  GlobalLT("SadJuli","GLOBAL",2)
~ THEN REPLY #40342 /* ~"What are you doing here?"~ */ GOTO 25
  IF ~  GlobalLT("SadJuli","GLOBAL",2)
~ THEN REPLY #40343 /* ~"Can you tell me about this place?"~ */ GOTO 25
  IF ~  GlobalLT("SadJuli","GLOBAL",2)
Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #40344 /* ~"What can you tell me about the silent prostitute?"~ */ GOTO 25
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
GlobalLT("SadJuli","GLOBAL",2)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40345 /* ~"I heard that Kesai-Serris is Ravel's daughter. Is that true?"~ */ GOTO 25
  IF ~  Global("Scent_Quest","AR0605",1)
GlobalLT("SadJuli","GLOBAL",2)
~ THEN REPLY #40346 /* ~"I'm trying to find Vivian's scent... do you know where it might be?"~ */ GOTO 25
  IF ~  Global("Veil_Quest","AR0605",1)
GlobalLT("SadJuli","GLOBAL",2)
~ THEN REPLY #40347 /* ~"I'm trying to find Marissa's Crimson Veil... do you know where it might be?"~ */ GOTO 25
  IF ~  GlobalLT("SadJuli","GLOBAL",2)
Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40348 /* ~"Do you know anything about Ravel Puzzlewell?"~ */ GOTO 25
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalLT("SadJuli","GLOBAL",2)
~ THEN REPLY #40349 /* ~"I've spoken to nine prostitutes altogether... do you know who or where the tenth student is?"~ */ GOTO 25
  IF ~  GlobalGT("SadJuli","GLOBAL",1)
~ THEN REPLY #40350 /* ~"What are you doing here?"~ */ GOTO 27
  IF ~  GlobalGT("SadJuli","GLOBAL",1)
~ THEN REPLY #40351 /* ~"Can you tell me about this place?"~ */ GOTO 29
  IF ~  GlobalGT("SadJuli","GLOBAL",1)
Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #63596 /* ~"What can you tell me about the silent prostitute?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_4","AR0605",1)
~ JOURNAL #66744 /* ~One of the prostitutes suggested that I ask Dolora about Ecco, the silent prostitute. She said that Dolora sometimes spoke to an old lover of Ecco's, one who knew her before she stopped speaking.~ */ GOTO 49
  IF ~  GlobalGT("SadJuli","GLOBAL",1)
Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67848 /* ~"What can you tell me about the silent prostitute?"~ */ DO ~SetGlobal("Ecco_Rumor_4","AR0605",1)
~ JOURNAL #66744 /* ~One of the prostitutes suggested that I ask Dolora about Ecco, the silent prostitute. She said that Dolora sometimes spoke to an old lover of Ecco's, one who knew her before she stopped speaking.~ */ GOTO 49
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
GlobalGT("SadJuli","GLOBAL",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40352 /* ~"I heard that Kesai-Serris is Ravel's daughter. Is that true?"~ */ DO ~SetGlobal("Know_Kim_Kes","AR0605",1)
~ JOURNAL #39457 /* ~Juliette told me that Kimasxi Addertongue, one of the prostitutes in the Brothel of Slating Intellectual Lusts, is the half-sister of Kesai-Serris, who I've been told is Ravel Puzzlewell's daughter.~ */ GOTO 48
  IF ~  Global("Scent_Quest","AR0605",1)
GlobalGT("SadJuli","GLOBAL",1)
~ THEN REPLY #40353 /* ~"I'm trying to find Vivian's scent... do you know where it might be?"~ */ JOURNAL #66727 /* ~One of the prostitutes suggested that I ask Nenny if she knows anything about who took Vivian's personal scent. Apparently, Nenny's got a reputation for always wandering around and watching what other people are doing.~ */ GOTO 30
  IF ~  Global("Veil_Quest","AR0605",1)
GlobalGT("SadJuli","GLOBAL",1)
~ THEN REPLY #40354 /* ~"I'm trying to find Marissa's Crimson Veil... do you know where it might be?"~ */ JOURNAL #66728 /* ~One of the prostitutes suggested that I ask Nenny if she's seen Marissa's Crimson Veil anywhere. Apparently, Nenny's got a reputation for always wandering around and watching what other people are doing.~ */ GOTO 31
  IF ~  GlobalGT("SadJuli","GLOBAL",1)
Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40355 /* ~"Do you know anything about Ravel Puzzlewell?"~ */ JOURNAL #66742 /* ~I asked one of the Brothel's prostitutes about Ravel, and she suggested I speak to Yves about it. I'm told that Yves collects all sorts of tales, and will likely have one about Ravel in her repertoire.~ */ GOTO 32
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",1)
~ THEN REPLY #40356 /* ~"I've spoken to nine prostitutes altogether... do you know who or where the tenth student is?"~ */ GOTO 33
  IF ~~ THEN REPLY #40357 /* ~"Never mind, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 12.1 24.0 24.1 24.2 24.3 24.4 24.5 24.6 24.7
  SAY #40250 /* ~Juliette exhales a long and forlorn sigh. You realize she's not even really looking at you.~ */
  IF ~~ THEN REPLY #40358 /* ~"Juliette? Did you hear me?"~ */ JOURNAL #66753 /* ~Juliette, one of the prostitutes in the Brothel of Slating Intellectual Lusts, refuses to answer any of my questions. It seems the only thing she cares to speak of is her self-professed miserably boring life.~ */ GOTO 26
  IF ~~ THEN REPLY #40359 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #40251 /* ~"Hmm? Oh, I was not truly listening - my apologies. But certainly thou hast not come simply to deliver a litany of questions on my life of tedium and my tedious doings...?"~ */
  IF ~~ THEN REPLY #40360 /* ~"Is your life so tedious?"~ */ GOTO 3
  IF ~~ THEN REPLY #40361 /* ~"Actually, yes, I did have questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #40362 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.8
  SAY #40252 /* ~"I am here in preparation to become a Sensate. Mistress Grace is our teacher. All the prostitutes here are her students."~ */
  IF ~~ THEN REPLY #40363 /* ~"A Sensate?"~ */ GOTO 28
  IF ~~ THEN REPLY #40364 /* ~"I had another question..."~ */ GOTO 24
  IF ~~ THEN REPLY #40365 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 29.0
  SAY #40253 /* ~Juliette nods. "A member of the Society of Sensation, a faction devoted to sensation and experience. Mistress Grace would be better suited to answer thy questions regarding the Sensates than I."~ */
  IF ~~ THEN REPLY #40366 /* ~"I had another question..."~ */ GOTO 24
  IF ~~ THEN REPLY #40367 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 24.9
  SAY #40254 /* ~Juliette smirks. "The Brothel... 'tis a school for aspiring Sensates. Mistress Grace is our teacher and, by the way, more qualified to answer such questions than myself. Mayhap thou wouldst rather speak with her?"~ */
  IF ~~ THEN REPLY #40389 /* ~"You're aspiring to be a... Sensate?"~ */ GOTO 28
  IF ~~ THEN REPLY #40390 /* ~"Not right now. I had another question..."~ */ GOTO 24
  IF ~~ THEN REPLY #40391 /* ~"Perhaps so. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 24.13
  SAY #40255 /* ~Juliette shakes her head sadly. "Such a pity, too! Poor woman. I will admit I have crept into her chambers at times to apply a drop or two of her perfumes... but for one to be so bold as to make off with Vivian's own, personal scent? Unbearably rude! In any case, ask young Nenny of it. She's always flitting about, watching everyone."~ */
  IF ~~ THEN REPLY #40392 /* ~"I had another question..."~ */ GOTO 24
  IF ~~ THEN REPLY #40393 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 24.14
  SAY #40256 /* ~"Oh, who would ever wish to *find* the thing? I, for one, hope that unmannerly and utterly disagreeable woman is confined to her chambers until I am well and gone from this place! But to answer thy question, no; I have not seen it, nor do I know where it might be. Nenny might, though - she's forever wandering about, watching everything."~ */
  IF ~~ THEN REPLY #40394 /* ~"I had another question..."~ */ GOTO 24
  IF ~~ THEN REPLY #40395 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 24.15
  SAY #40257 /* ~"Ravel Puzzle-what? Who?" Juliette appears perplexed. "Is that truly someone's name? If it is, Yves might know of her. She knows myriad tales, and can likely tell thee one of this 'Ravel.'"~ */
  IF ~~ THEN REPLY #40396 /* ~"Never mind. I had another question..."~ */ GOTO 24
  IF ~~ THEN REPLY #40397 /* ~"Forget it, Juliette. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.16
  SAY #40258 /* ~"Whatever art thou *speaking* of?"~ */
  IF ~~ THEN REPLY #40398 /* ~"The tenth prostitute - who is she?"~ */ GOTO 34
  IF ~~ THEN REPLY #40399 /* ~"Never mind. I had another question..."~ */ GOTO 24
  IF ~~ THEN REPLY #40400 /* ~"Forget it, Juliette. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #40259 /* ~"I have no idea of whom thou art speaking."~ */
  IF ~~ THEN REPLY #40401 /* ~"I had another question, then..."~ */ GOTO 24
  IF ~~ THEN REPLY #40402 /* ~"In that case, farewell."~ */ EXIT
END

IF ~  Global("SadJuli","GLOBAL",1)
Global("Jul_Mission_1","GLOBAL",0)
Global("Jul_Mission_2","GLOBAL",0)
~ THEN BEGIN 35 // from:
  SAY #40260 /* ~You see sad Juliette, looking as miserable as ever. She barely acknowledges your presence, looking your way only briefly before staring off into space once more.~ */
  IF ~~ THEN REPLY #40403 /* ~"What's wrong, Juliette?"~ */ GOTO 2
  IF ~~ THEN REPLY #40404 /* ~"I had some questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #40405 /* ~"I was just passing by, Juliette. Farewell."~ */ EXIT
END

IF ~  Global("SadJuli","GLOBAL",1)
GlobalGT("Jul_Mission_1","GLOBAL",0)
~ THEN BEGIN 36 // from:
  SAY #40261 /* ~Juliette looks to you hopefully. "Well? Anything, yet?"~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #40406 /* ~"No, not yet. Farewell."~ */ EXIT
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
Global("Montague_Problem","GLOBAL",1)
!Dead("Montagu")
~ THEN REPLY #66215 /* ~"There's a problem. He won't speak with me."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",6)
SetGlobal("SadJuli","GLOBAL",3)
~ JOURNAL #66208 /* ~Juliette had asked me to deliver some 'false' love-letters to her lover, Montague. I explained to her that Montague had become hostile towards me and so wouldn't speak to me.~ */ GOTO 43
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
Global("Montague_Problem","GLOBAL",1)
Dead("Montagu")
~ THEN REPLY #66216 /* ~"There's a problem... he's been killed."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",7)
SetGlobal("SadJuli","GLOBAL",2)
~ JOURNAL #66209 /* ~Juliette had asked me to deliver some 'false' love-letters to her lover, Montague. I explained to Juliette that Montague had been killed.~ */ GOTO 50
  IF ~  Global("Jul_Mission_1","GLOBAL",2)
~ THEN REPLY #40407 /* ~"Yes, in fact. He was heartbroken, and has decided to leave you to your 'new love.'"~ */ DO ~SetGlobal("SadJuli","GLOBAL",2)
AddexperienceParty(10000)
~ JOURNAL #39458 /* ~I told Juliette what transpired with Montague, and she was reduced to a sobbing wreck.~ */ GOTO 37
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #40408 /* ~"Montague intended to leave you to your 'new love,' and so I told him it was all a ruse. I'm not sure what he'll do, now."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~I told Juliette what transpired with Montague. She was less than pleased with the news, but agreed to answer my questions nonetheless.~ */ GOTO 39
  IF ~  Global("Jul_Mission_1","GLOBAL",4)
~ THEN REPLY #40409 /* ~"Montague seemed disinterested... I recall him saying he was 'bored with things, in any case.'"~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~I told Juliette what transpired with Montague. She was less than pleased with the news, but agreed to answer my questions nonetheless.~ */ GOTO 42
  IF ~  Global("Jul_Mission_1","GLOBAL",4)
~ THEN REPLY #40410 /* ~"I gave him the letters, but... could gauge no reaction. I suggest you speak with him yourself some time."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~I told Juliette what transpired with Montague. She was less than pleased with the news, but agreed to answer my questions nonetheless.~ */ GOTO 43
  IF ~  Global("Jul_Mission_1","GLOBAL",5)
~ THEN REPLY #40411 /* ~"Montague seemed disinterested... I recall him saying something about another lover of his own, too."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~I told Juliette what transpired with Montague. She was less than pleased with the news, but agreed to answer my questions nonetheless.~ */ GOTO 42
  IF ~  Global("Jul_Mission_1","GLOBAL",5)
~ THEN REPLY #40412 /* ~"I gave him the letters, but... could gauge no reaction. I suggest you speak with him yourself some time."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~I told Juliette what transpired with Montague. She was less than pleased with the news, but agreed to answer my questions nonetheless.~ */ GOTO 43
END

IF ~~ THEN BEGIN 37 // from: 36.3 45.0 50.0
  SAY #40262 /* ~Juliette looks shocked and, seconds later, begins to whimper and cry pitifully.~ */
  IF ~  Global("Juli_Info","AR0605",1)
~ THEN REPLY #40413 /* ~"Enough of the crying... I want my questions answered, and now - we had a deal."~ */ GOTO 38
  IF ~  Global("Juli_Info","AR0605",0)
~ THEN REPLY #66151 /* ~"I... had some questions, Juliette..."~ */ GOTO 38
  IF ~~ THEN REPLY #40414 /* ~"It's a shame it turned out this way. I'll come back another time, Juliette; farewell."~ */ EXIT
  IF ~~ THEN REPLY #40415 /* ~Leave quietly.~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #40263 /* ~She manages to rein in her sobbing and, wiping her eyes, looks to you again.~ */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 39 // from: 36.4 44.4
  SAY #40264 /* ~"Thou told him...? Blast! Now what shall I do?!"~ */
  IF ~~ THEN REPLY #40418 /* ~"Since he knows everything now, you may as well discuss your feelings about the relationship openly."~ */ GOTO 40
  IF ~  Global("Juli_Info","AR0605",1)
~ THEN REPLY #40419 /* ~"That's your decision - I did my part. I want my questions answered, now..."~ */ GOTO 24
  IF ~  Global("Juli_Info","AR0605",0)
~ THEN REPLY #40420 /* ~"I'm not sure. I had some questions, though..."~ */ GOTO 24
  IF ~~ THEN REPLY #40421 /* ~"I don't know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0 43.0
  SAY #40265 /* ~Juliette nods. "'Tis true enough, yes. I thank thee."~ */
  IF ~  Global("Juli_Info","AR0605",1)
~ THEN REPLY #40422 /* ~"Of course. Now I want my questions answered..."~ */ GOTO 24
  IF ~  Global("Juli_Info","AR0605",0)
~ THEN REPLY #40423 /* ~"Of course. I had some questions, now..."~ */ GOTO 24
  IF ~~ THEN REPLY #40424 /* ~"My pleasure. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY #40266 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.5 36.7 45.1 45.2
  SAY #40267 /* ~Juliette looks shocked. "He... he said *what?!* How could I have been so... oh! It would appear as if my relationship had the troubles I so desired, and I merely missed them in all my melancholy!"~ */
  IF ~  Global("Juli_Info","AR0605",1)
~ THEN REPLY #40426 /* ~"Perhaps. In any case, I've done my part... I'd like my questions answered, now."~ */ GOTO 24
  IF ~  Global("Juli_Info","AR0605",0)
~ THEN REPLY #40427 /* ~"Perhaps. I've some questions, now..."~ */ GOTO 24
  IF ~~ THEN REPLY #40428 /* ~"Maybe so. Farewell, Juliette."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 20.0 23.0 36.1 36.6 36.8 44.1
  SAY #40268 /* ~Juliette grits her teeth in frustration. "Oooo! How enormously frustrating! I shall have to try something else, then."~ */
  IF ~~ THEN REPLY #40429 /* ~"Why don't you just *talk* to him about it? You ought to try discussing the relationship openly before concocting any more of your schemes."~ */ GOTO 40
  IF ~  Global("Juli_Info","AR0605",1)
~ THEN REPLY #40430 /* ~"Perhaps. In any case, I've done my part... I'd like my questions answered, now."~ */ GOTO 24
  IF ~  Global("Juli_Info","AR0605",0)
~ THEN REPLY #40431 /* ~"Perhaps. I've some questions, now..."~ */ GOTO 24
  IF ~~ THEN REPLY #40432 /* ~"Maybe so. Farewell, Juliette."~ */ EXIT
END

IF ~  Global("SadJuli","GLOBAL",1)
GlobalGT("Jul_Mission_2","GLOBAL",0)
~ THEN BEGIN 44 // from:
  SAY #40269 /* ~Juliette looks to you hopefully. "Well? Anything, yet?"~ */
  IF ~  Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #40433 /* ~"No, not yet. Farewell."~ */ EXIT
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
Global("Montague_Problem","GLOBAL",1)
!Dead("Montagu")
~ THEN REPLY #66217 /* ~"There's a problem. He won't speak with me."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",6)
SetGlobal("SadJuli","GLOBAL",3)
~ JOURNAL #66213 /* ~Juliette had asked me to play the jealous suitor to her lover, Montague. I explained to her that Montague had become hostile towards me and so wouldn't speak to me.~ */ GOTO 43
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
Global("Montague_Problem","GLOBAL",1)
Dead("Montagu")
~ THEN REPLY #66218 /* ~"There's a problem... he's been killed."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",7)
SetGlobal("SadJuli","GLOBAL",2)
~ JOURNAL #66214 /* ~Juliette had asked me to play the jealous suitor to her lover, Montague. I explained to Juliette that Montague had been killed.~ */ GOTO 50
  IF ~  Global("Jul_Mission_2","GLOBAL",2)
~ THEN REPLY #40434 /* ~"Yes, in fact. He was heartbroken, and has decided to leave you to me."~ */ DO ~SetGlobal("SadJuli","GLOBAL",2)
AddexperienceParty(10000)
~ JOURNAL #39458 /* ~I told Juliette what transpired with Montague, and she was reduced to a sobbing wreck.~ */ GOTO 45
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #40435 /* ~"Montague intended to leave you to me, and so I told him it was all a ruse. I'm not sure what he'll do, now."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~I told Juliette what transpired with Montague. She was less than pleased with the news, but agreed to answer my questions nonetheless.~ */ GOTO 39
  IF ~  Global("Jul_Mission_2","GLOBAL",4)
~ THEN REPLY #40436 /* ~"Montague seemed disinterested..."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 45
  IF ~  Global("Jul_Mission_2","GLOBAL",4)
~ THEN REPLY #40437 /* ~"I made my demands, but... could gauge no reaction. He didn't want to fight me, though. I suggest you speak with him yourself some time."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 45
  IF ~  Global("Jul_Mission_2","GLOBAL",5)
~ THEN REPLY #40438 /* ~"Montague seemed disinterested..."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 45
  IF ~  Global("Jul_Mission_2","GLOBAL",5)
~ THEN REPLY #40439 /* ~"I made my demands, but... could gauge no reaction. I suggest you speak with him yourself some time."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.3 44.5 44.6 44.7 44.8
  SAY #40270 /* ~"Is he not going to fight for me, then?"~ */
  IF ~  Global("Jul_Mission_2","GLOBAL",2)
~ THEN REPLY #40440 /* ~"No, he won't."~ */ GOTO 37
  IF ~  Global("Jul_Mission_2","GLOBAL",4)
~ THEN REPLY #40441 /* ~"No, he won't. I recall him saying he was 'bored with things, in any case.'"~ */ GOTO 42
  IF ~  Global("Jul_Mission_2","GLOBAL",5)
~ THEN REPLY #40442 /* ~"No, he won't. I recall him saying something about another lover of his own, too."~ */ GOTO 42
END

IF ~  Global("SadJuli","GLOBAL",2)
~ THEN BEGIN 46 // from:
  SAY #40271 /* ~Juliette looks the worst you've ever seen her. Her face is haggard and pale, with black rings beneath her bloodshot eyes. She offers you a faltering smile, as if trying to present a pleasant front.~ */
  IF ~~ THEN REPLY #40443 /* ~"I've some questions, Juliette."~ */ GOTO 24
  IF ~~ THEN REPLY #40444 /* ~"Just passing by. Farewell, Juliette."~ */ EXIT
END

IF ~  Global("SadJuli","GLOBAL",3)
~ THEN BEGIN 47 // from:
  SAY #40272 /* ~"Greetings. Come to ask thy questions of me, I take it?"~ */
  IF ~~ THEN REPLY #40445 /* ~"Yes, I have..."~ */ GOTO 24
  IF ~~ THEN REPLY #40446 /* ~"No, just passing by. Farewell, Juliette."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 24.12
  SAY #40273 /* ~"Ravel... hmm... ah! I thought I might have heard that name before. I know not the truth of it, but I *have* heard such a rumor. Thou may wish to ask Kimasxi Addertongue that very same question... they are half-sisters, thou see."~ */
  IF ~~ THEN REPLY #40447 /* ~"Are they? Interesting. I had another question..."~ */ GOTO 24
  IF ~~ THEN REPLY #40448 /* ~"I see... that's all I wished to know. Farewell, Juliette."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 24.10 24.11
  SAY #40274 /* ~"Oh, 'tis Ecco thou speak of. They say she is sworn never to speak again, for one reason or another. I cannot imagine why anyone would do such a thing."~ */
  IF ~~ THEN REPLY #40449 /* ~"I had another question..."~ */ GOTO 24
  IF ~~ THEN REPLY #40450 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 20.1 23.1 36.2 44.2
  SAY #66204 /* ~Juliette scoffs. "What? Surely this is some sort of cruel game thou art playing with me..." She suddenly gasps and covers her mouth. "No... no! I can see thou dost speak true! He... was dueling again, wasn't he?"~ */
  IF ~~ THEN REPLY #66205 /* ~"Something like that... yes."~ */ GOTO 37
END
