// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3204 /* ~This gentleman is unremarkable save in that he has a black eye, as if he'd been struck in the face. He bows slightly as you approach him. "Greetings, sir."~ */
  IF ~~ THEN REPLY #3205 /* ~"Greetings. I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #40154 /* ~"Greetings, and farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #40155 /* ~"Greetings once more, sir."~ */
  IF ~~ THEN REPLY #40156 /* ~"Greetings. I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #40157 /* ~"Greetings, and farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.2 4.2 5.1 6.0 7.1 8.1 9.0 10.1 11.0 12.0 13.1 14.0 15.0 16.0 17.0
  SAY #40158 /* ~He nods. "Yes, go on..."~ */
  IF ~~ THEN REPLY #40159 /* ~"How'd you get the black eye?"~ */ GOTO 3
  IF ~~ THEN REPLY #40160 /* ~"What are you doing here?"~ */ GOTO 7
  IF ~~ THEN REPLY #40161 /* ~"What can you tell me about this place?"~ */ GOTO 10
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #40162 /* ~"What can you tell me about the silent prostitute?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ GOTO 11
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #68125 /* ~"What can you tell me about the silent prostitute?"~ */ GOTO 11
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40163 /* ~"I heard that Kesai-Serris is Ravel's daughter. Is that true?"~ */ GOTO 12
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40164 /* ~"I'm trying to find Vivian's scent... do you know where it might be?"~ */ GOTO 13
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40165 /* ~"I'm trying to find Marissa's Crimson Veil... do you know where it might be?"~ */ GOTO 15
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40166 /* ~"Do you know anything about Ravel Puzzlewell?"~ */ GOTO 16
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40167 /* ~"I've spoken to nine prostitutes altogether... do you know who or where the tenth student is?"~ */ GOTO 17
  IF ~~ THEN REPLY #40168 /* ~"Never mind, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #40169 /* ~He smirks. "Oh, this? A long story, sir. One you would not be interested in."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 426
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40170 /* ~"But I would... please, do tell."~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40171 /* ~"Very well. I had another question..."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40172 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #40173 /* ~The man sighs, rolling his eyes. "Very well... but I shan't be made to divulge the details. Despite my earlier remark upon the tale's length, I might sum it up in two words: Kimasxi Addertongue."~ */
  IF ~  Global("Kimasxi","GLOBAL",0)
~ THEN REPLY #40174 /* ~"Who?"~ */ GOTO 5
  IF ~  GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40175 /* ~"Oh... yes, I know her."~ */ GOTO 6
  IF ~~ THEN REPLY #40176 /* ~"I see. I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40177 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #40178 /* ~"Ah, you have not yet spoken to her, I see. I will tell you no more of the most delightful treat that is Kimasxi, good sir... instead, I would insist that you speak to her yourself. She is one of the prostitutes here, and Lady Grace's most fascinating student." He smiles at you.~ */
  IF ~  !NearbyDialog("DGrace")
!Dead("Grace")
~ THEN REPLY #40179 /* ~"Lady Grace?"~ */ GOTO 9
  IF ~~ THEN REPLY #40180 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40181 /* ~"Perhaps I'll go find her, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #40182 /* ~The man sighs dreamily. "Wonderful, is she not?" He suddenly snaps to attention. "But wait! Do not take my utterance for affection, good sir... I am engaged to be wed, after all, to a woman I well and truly love. But Kimasxi... she's so... *different* to speak with." He smiles at you.~ */
  IF ~~ THEN REPLY #40183 /* ~"Different... yes. I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40184 /* ~"I'll be taking my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY #40185 /* ~"Why, I am enjoying the pleasures of the Brothel! Aren't you?"~ */
  IF ~~ THEN REPLY #40186 /* ~"The pleasures?"~ */ GOTO 8
  IF ~~ THEN REPLY #40187 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40188 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #40189 /* ~"Yes, that is correct... are you not here to speak to the ladies, sir? That is, after all, the purpose of the establishment as far as patrons are concerned. To converse with the lovely students of Lady Grace!"~ */
  IF ~  !NearbyDialog("DGrace")
!Dead("Grace")
~ THEN REPLY #40190 /* ~"Lady Grace?"~ */ GOTO 9
  IF ~~ THEN REPLY #40191 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40192 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0 8.0 10.0
  SAY #40193 /* ~The man nods. "Yes, and what a vision she is. Why, I could listen to her voice for hours! I find only Kimasxi more entertaining..." His mind seems to wander momentarily. "Oh! But as I was saying, Lady Grace is the proprietress of the Brothel. Doubtless she's here, somewhere... go speak to her yourself. You won't be disappointed, I assure you."~ */
  IF ~~ THEN REPLY #40194 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40195 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #40196 /* ~"What citizen of Sigil knows not of the Brothel of Slating Intellectual Lusts? You must be new here indeed, sir." He sighs. "Walk about... converse with the ladies... that is all there is to the Brothel. If you're interested in the history of it all and somesuch, I'd advise you to speak with Lady Grace about it."~ */
  IF ~  !NearbyDialog("DGrace")
!Dead("Grace")
~ THEN REPLY #40197 /* ~"Lady Grace?"~ */ GOTO 9
  IF ~~ THEN REPLY #40198 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40199 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.3 2.4
  SAY #40200 /* ~The man pauses to think. "Never have I traded words with her, but I believe her name is 'Ecco.'"~ */
  IF ~~ THEN REPLY #40201 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40202 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.5
  SAY #40203 /* ~"Ravel... Ravel... you mean the legendary night hag? I'd find it hard to believe that monstrous creature was *anything's* mother, let alone good Kesai's."~ */
  IF ~~ THEN REPLY #40204 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40205 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.6
  SAY #40206 /* ~"She lost her scent? How odd... I passed her only hours ago, and she smelled quite nice. As she usually does, of course. In fact, I'm unsure if I have ever been around a woman with a more enticing fragrance."~ */
  IF ~~ THEN REPLY #40207 /* ~"Actually, it's her *personal* scent that's been lost."~ */ GOTO 14
  IF ~~ THEN REPLY #40208 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40209 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #40210 /* ~"Is it indeed? I had no idea such a thing was possible. Well, I certainly hope she gets it back!"~ */
  IF ~~ THEN REPLY #40211 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40212 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.7
  SAY #40213 /* ~"No, I do not. I must confess, though, that Marissa frightens me somewhat. I fear that something terrible waits within her chambers, and that she is merely humoring me until she tears me apart. I, for one, will be glad when she has her veil and will meet patrons outside of her darkened room once more."~ */
  IF ~~ THEN REPLY #40214 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40215 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.8
  SAY #40216 /* ~"All I know of Ravel are the common children's tales... that she's incredibly evil, and that she brought the wrath of the Lady of Pain down upon herself and was banished forever."~ */
  IF ~~ THEN REPLY #40217 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40218 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.9
  SAY #40219 /* ~"A tenth? A tenth student... a tenth prostitute... hmmm. No, I cannot say that I even know of one, let alone who she might be."~ */
  IF ~~ THEN REPLY #40220 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40221 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END
