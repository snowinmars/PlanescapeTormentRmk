// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCPAT3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCPAT3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #10900 /* ~This is a slightly balding man with a cynical cast to his face. He speaks in a staccato voice, rapping out each word distinctly and clearly. "What do you want, cutter?"~ */
  IF ~~ THEN REPLY #10901 /* ~"Who are you?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10902 /* ~"I'm looking for a journal."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10903 /* ~"I'm looking for a fellow named Pharod. He's a Collector. Have you seen or heard of him?"~ */ GOTO 8
  IF ~~ THEN REPLY #10904 /* ~"What can you tell me about this place?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10905 /* ~"Who is that burning by the entryway?"~ */ GOTO 5
  IF ~~ THEN REPLY #10906 /* ~"What was that you and your friend were saying about Sigil?"~ */ GOTO 6
  IF ~~ THEN REPLY #10907 /* ~"Nothing. Good day."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #10908 /* ~"Just when she and I were about to launch into another scintillating conversation." Sarcasm drips from his voice. "What can I do for you?"~ */
  IF ~~ THEN REPLY #10909 /* ~"I wanted to ask you more questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10910 /* ~"Nothing. Forget it."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 7.0
  SAY #10911 /* ~"I am Cilaen Irontoes. Before you ask, I got the name because my idiot brother dropped a fifty-pound stone on my feet and crushed my toes. Now I have iron toes. All right?"~ */
  IF ~~ THEN REPLY #10912 /* ~"All right. I suppose. Answer some other questions, will you?"~ */ GOTO 7
  IF ~~ THEN REPLY #10913 /* ~"It'll do. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 7.1
  SAY #10914 /* ~"I haven't seen one. At least, not one that stuck out in my mind. If it wasn't valuable, try the trash mounds out on the opposite side of the Hive. I sympathize with your plight. Journals are the very essence of identity. They keep us aware of our past and help us plot our future paths. I always keep a journal, myself, and I find I am a better person because of it." He says this last with self-satisfied relish.~ */
  IF ~~ THEN REPLY #10915 /* ~"You're not kidding. Answer some other questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10916 /* ~"The trash warrens? My thanks."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 7.3
  SAY #10917 /* ~"This is the Smoldering Corpse. I have brought my greenhorn, clueless, prime cousin here to see some of the sights, smells, and sounds of Sigil's beauties. So far, she remains unimpressed."~ */
  IF ~~ THEN REPLY #10918 /* ~"I can see why. Can you tell me something else?"~ */ GOTO 7
  IF ~~ THEN REPLY #10919 /* ~"Really? Odd. Good day, sir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4 7.4
  SAY #10920 /* ~"Chant has it that the unfortunate fellow goes by the name of Ignus. Burned down a portion of the Hive before the folks here got together and took care of him. They made him a conduit to the Elemental Plane of Fire, and now he has to writhe there for folks' amusement. Not too amusing, but interesting, certainly."~ */
  IF ~~ THEN REPLY #10921 /* ~"It certainly is. Can you tell me something else?"~ */ GOTO 7
  IF ~~ THEN REPLY #10922 /* ~"Yes, it is. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.5 7.5
  SAY #10923 /* ~"Ah. My *cousin*..." He stresses the word, as if to emphasize that he has no choice in his acquaintance. "...has recently come here from her backwater prime world. My uncle, a renowned wizard, brought her here to expand her horizons. She labors under the delusion that *this* is the center of the multiverse, and she thinks it's somehow important. Since I've lived here my whole life, I know otherwise - it's a place the powers and planeborn overlook, just as humans overlook the squirrels in their city parks. It's not important, and the sooner humans come to realize they're not important, the better off they'll be."~ */
  IF ~~ THEN REPLY #10924 /* ~"Really? Hm. I'll have to hear her justification for this. In the meantime, can you answer some other questions for me?"~ */ GOTO 7
  IF ~~ THEN REPLY #10925 /* ~"Fascinating. Thank you, and good day."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from: 1.0 2.0 3.0 4.0 5.0 6.0 8.1 9.0
  SAY #10926 /* ~"What would you like to know?"~ */
  IF ~~ THEN REPLY #10927 /* ~"Who are you?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10928 /* ~"I'm looking for a journal."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10929 /* ~"I'm looking for a Collector by the name of Pharod. Have you seen or heard of him?"~ */ GOTO 8
  IF ~~ THEN REPLY #10930 /* ~"What can you tell me about this place?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10931 /* ~"Who is that burning by the entryway?"~ */ GOTO 5
  IF ~~ THEN REPLY #10932 /* ~"What was that you and your friend were saying about Sigil?"~ */ GOTO 6
  IF ~~ THEN REPLY #10933 /* ~"Nothing. Good day."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.2 7.2
  SAY #10934 /* ~"A Collector? Isn't that one of those nasty dead-haulers? I don't associate with that type. This isn't my Ward, really. So no, I've never heard of him."~ */
  IF ~~ THEN REPLY #10935 /* ~"What IS your Ward?"~ */ GOTO 9
  IF ~~ THEN REPLY #10936 /* ~"That's not very helpful. Perhaps you can answer some questions for me."~ */ GOTO 7
  IF ~~ THEN REPLY #10937 /* ~"Then farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #10938 /* ~"I live in the Lady's Ward, with my uncle. It's generally a better class of person there, if I may say so myself. None of the riff-raff that you see floating around here so much. No, I'd say that coming to this area is DEFINITELY slumming. I can't say that I enjoy it, but then, I'm told one should experience a wide variety of life's offerings. I'm just about done with this one."~ */
  IF ~~ THEN REPLY #10939 /* ~"Lady's Ward, eh? Very well. Answer some questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10940 /* ~"Very well. Farewell."~ */ EXIT
END
