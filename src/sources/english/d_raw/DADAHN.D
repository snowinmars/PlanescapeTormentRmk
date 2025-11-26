// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DADAHN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DADAHN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3015 /* ~The man in front of you has large eyes and a thin frame. He seems confused and frightened by the rest of the bar patrons, but he looks incredibly relieved to see you. ~ */
  IF ~~ THEN REPLY #3016 /* ~"Greetings?"~ */ GOTO 1
  IF ~~ THEN REPLY #13301 /* ~Ignore the man, turn away.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #11268 /* ~He chuckles lightly and rolls his eyes in a 'you wouldn't believe what happened to me' look that you find strangely familiar. "'Bout time, friend! I thought I might be here all day waiting for you."~ */
  IF ~~ THEN REPLY #13302 /* ~"Uh... do I know you?"~ */ DO ~SetGlobal("Know_Adahn","GLOBAL",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #11269 /* ~"Why, yes." He gives you a peery eye. "At least, I think. I... uh... well... can't recall everything about you, but..." He frowns in thought, then shrugs. "...anyway, it's good to see you. I'm Adahn. We're friends, I take it. Excellent! I could use more friends like you, it seems..." He looks around in confusion. "Since I don't appear to know anyone in these parts, much less how I got here."~ */
  IF ~~ THEN REPLY #13303 /* ~"Where are you from?"~ */ GOTO 3
  IF ~~ THEN REPLY #13304 /* ~"Adahn was just somebody I made up. I didn't think there was anyone with that name."~ */ GOTO 5
  IF ~~ THEN REPLY #13305 /* ~"Well, I have to leave. Farewell... Adahn."~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #13289 /* ~Adahn seems surprised, and his confusion resurfaces. "I... hmmnnn." He frowns. "Well, not from around here, I don't believe... or do I? I think I would have recalled such a place. Don't really right recall where I'm from, or where I'm bound..."~ */
  IF ~~ THEN REPLY #13306 /* ~"Do you know who I am?"~ */ GOTO 4
  IF ~~ THEN REPLY #13307 /* ~"Well, I have to leave. Farewell... Adahn."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #13290 /* ~"An... old friend?" He sounds like he's testing the water. "Aren't you?"~ */
  IF ~~ THEN REPLY #13308 /* ~"Yes, yes, I am. Say, I had some questions for you..."~ */ GOTO 7
  IF ~~ THEN REPLY #13309 /* ~"Not really. Adahn was just somebody I made up. I didn't think there was anyone with that name, much less that he would be a friend of mine."~ */ GOTO 5
  IF ~~ THEN REPLY #13310 /* ~"Well, it's been interesting, Adahn, but I have to leave. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 2.1 4.1
  SAY #13291 /* ~"Really?" He shrugs, as if it's not important. "Well, I don't believe I made you up, so there's no trouble here... or is there? I think, therefore I am. I think." He looks puzzled. "Don't you think so?"~ */
  IF ~~ THEN REPLY #13311 /* ~"Sounds right. Say, I had some questions for you..."~ */ GOTO 7
  IF ~~ THEN REPLY #13312 /* ~"Actually, I don't think I intended to make you up at all. Is it possible you're nothing more than a figment of my imagination?"~ */ GOTO 6
  IF ~~ THEN REPLY #13313 /* ~"Well, it's been interesting, Adahn, but I have to leave. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #13292 /* ~Adahn looks surprised, is about to say something, then suddenly vanishes into thin air.~ */
  IF ~~ THEN REPLY #36923 /* ~"Uh... farewell, then."~ */ DO ~DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 5.0
  SAY #13293 /* ~"Oh, and I had some for you, too..." He frowns. "Except I can't seem to get a handle on 'em." He shrugs. "Questions - who needs 'em? All that matters is the answers anyway. I think."~ */
  IF ~~ THEN REPLY #13314 /* ~"Well, it's been interesting, Adahn, but I have to leave. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 2.2 3.1 4.2 5.2 7.0
  SAY #13294 /* ~"Hey... uh..." He frowns. "Look, before you up and fly away to wherever abouts you're going, I've something for you... at least I think so..."~ */
  IF ~~ THEN REPLY #13315 /* ~"What is it?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #13295 /* ~"I'm not sure." He digs in his pockets, and frowns. "Pockets too damned small to keep anything in..." He scratches his head. "Maybe..." He pulls back his sleeves, first the left one, then the right one, looks angry, then lets both sleeves fall back to full length.~ */
  IF ~~ THEN REPLY #13316 /* ~"Did you lose it?"~ */ DO ~GiveItemCreate("AdRing",Protagonist,1,0,0)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #13317 /* ~"Why don't you check the left sleeve again? I think it might be there."~ */ DO ~GiveItemCreate("AdRing2",Protagonist,1,0,0)
AddexperienceParty(250)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #13318 /* ~"Why don't you check the left sleeve again? I think it might be there."~ */ DO ~GiveItemCreate("AdRing2",Protagonist,1,0,0)
AddexperienceParty(250)
~ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #13296 /* ~"No, no, just give me a minute." He curses under his breath, then pulls back his sleeves again, first the right one, then the left one. As he pulls back the left sleeve, you see a package tied to his wrist. He smiles in relief, unties it from his arm, then hands it to you. "For you, friend. From me, for you... a thanks of sorts!" He nods as you take the item. You study it... it looks like a ring of some sort. ~ */
  IF ~~ THEN REPLY #13319 /* ~"Thanks, Adahn."~ */ GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 9.1 9.2
  SAY #13297 /* ~"Really?" He pulls back the left sleeve again, and this time, you see a package tied to his wrist. He smiles in relief, unties it from his arm, then hands it to you. "For you, friend. From me, for you... a thanks of sorts!" He nods as you take the item. You study it... it looks like a ring of some sort. ~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #13320 /* ~"Wasn't there some money to go along with this?"~ */ DO ~GiveGoldForce(100)
AddexperienceParty(500)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #13321 /* ~"Wasn't there some money to go along with this?"~ */ DO ~GiveGoldForce(100)
AddexperienceParty(500)
~ GOTO 12
  IF ~~ THEN REPLY #13322 /* ~"Thanks, Adahn."~ */ GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1
  SAY #13298 /* ~He snaps his fingers. "Yes, there was, yes there was." He looks down at his belt, where there is now a belt pouch. He unties it and passes it to you. "It's all there. All hundred coppers." You take the bag, and open it. It all looks to be there.~ */
  IF ~  CheckStatGT(Protagonist,16,INT)
CheckStatLT(Protagonist,17,WIS)
~ THEN REPLY #13323 /* ~"What about that enchanted item you wanted to give me?"~ */ DO ~GiveItemCreate("AdDagger",Protagonist,1,0,0)
AddexperienceParty(1000)
~ GOTO 13
  IF ~  CheckStatGT(Protagonist,16,WIS)
~ THEN REPLY #13324 /* ~"What about that enchanted item you wanted to give me?"~ */ DO ~GiveItemCreate("AdDagger",Protagonist,1,0,0)
AddexperienceParty(1000)
~ GOTO 13
  IF ~~ THEN REPLY #13325 /* ~"Thanks, Adahn."~ */ GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1
  SAY #13299 /* ~He looks puzzled for a moment, then smiles, as if remembering. "Why, yes, there was one, wasn't there?" He reaches into his right sleeve and pulls forth a long, slender dagger. "Here you are."~ */
  IF ~~ THEN REPLY #13326 /* ~"Thanks, Adahn."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 10.0 11.2 12.2 13.0
  SAY #13300 /* ~As you look up from your gift to thank Adahn, you suddenly notice he has vanished. You didn't even hear him leave.~ */
  IF ~~ THEN REPLY #36922 /* ~"Uh... farewell, then."~ */ DO ~DestroySelf()
~ EXIT
END
