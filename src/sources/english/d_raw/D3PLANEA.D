// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D3PLANEA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~D3PLANEA~

IF ~~ THEN BEGIN 0 // from: 11.0
  SAY #2949 /* ~"I am *known* as Three-Planes-Aligned, a githzerai scholar. If you are here for my lecture, it begins in a few moments."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 476
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #45030 /* ~Keep listening.~ */ GOTO 1
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #45031 /* ~Leave the lecture hall.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #45032 /* ~He speaks in a very low, somber tone. "Today I shall speak of the power of alignment and belief, and how they shape the planes."

"First, I shall explain the concept of alignment."~ */
  IF ~~ THEN REPLY #45033 /* ~Keep listening.~ */ GOTO 2
  IF ~~ THEN REPLY #45034 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #45035 /* ~"Alignment is a descriptor of one's beliefs, and how one acts upon those beliefs. At their core, all creatures predominately behave in one of three ways: with good in their heart, with evil in their heart, or indifference - or neutrality - in their heart. They predominately express each of these core behaviors in one of three different ways: in an ordered manner, in a chaotic manner, or in an indifferent, neutral manner. Thus, there are nine core alignments that one is capable of."~ */
  IF ~~ THEN REPLY #45036 /* ~Keep listening.~ */ GOTO 3
  IF ~~ THEN REPLY #45037 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #45038 /* ~"The nine alignments, then, are lawful good, neutral good, and chaotic good... lawful neutral, true neutral, and chaotic neutral... and lawful evil, neutral evil, and chaotic evil."

"Now, I shall speak of the power of alignment and the beliefs it engenders... of how from them the very deities gain strength, and how belief can physically affect one's environments."~ */
  IF ~~ THEN REPLY #45039 /* ~Keep listening.~ */ GOTO 4
  IF ~~ THEN REPLY #45040 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #45041 /* ~"A deity must have worshippers, for it is the faith of such subjects which gives them power. As converts are made and more come to believe in a god, the more power that god receives."

"Conversely, when no one believes in a deity, it withers and dies, joining the corpses of other gods that float on the Astral Plane. It is thus possible to slay a deity by simply forgetting about them."~ */
  IF ~~ THEN REPLY #45042 /* ~Keep listening.~ */ GOTO 5
  IF ~~ THEN REPLY #45043 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #45044 /* ~"A much more striking example of the power of alignment and belief, however, can be seen within the sliding of gate towns."

"First, though, I would define gate towns."~ */
  IF ~~ THEN REPLY #45045 /* ~Keep listening.~ */ GOTO 6
  IF ~~ THEN REPLY #45046 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #45047 /* ~"Gate towns are towns on the Outlands, the largely neutral area which Sigil spins over the center of. They are called 'gate towns' because they are built around a permanent gate, or portal, to one of the Outer Planes."~ */
  IF ~~ THEN REPLY #45048 /* ~Keep listening.~ */ GOTO 7
  IF ~~ THEN REPLY #45049 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #45050 /* ~"Each of these Outer Planes has its own alignment. The Abyss is chaotic and evil. Baator is lawful and evil. Mechanus is lawful neutral. Mount Celestia is lawful and good. The Outlands, again, are true neutral, leaning to neither law or chaos."

"'Sliding' occurs when there is a high concentration of belief in an area of differing belief. When this occurs, the area itself will move - or slide - to a plane that matches the new belief."~ */
  IF ~~ THEN REPLY #45051 /* ~Keep listening.~ */ GOTO 8
  IF ~~ THEN REPLY #45052 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #45053 /* ~"Now, the gate towns usually have a strong belief that matches the Outer Plane beyond the portal, but the belief is not yet strong enough for the town to slide from the Outlands and into the Outer Plane."

"For example, the town of Ribcage borders the portal to the lawful evil plane of Baator. As expected, the residents of Ribcage are largely lawful evil residents, but the entire town's alignment and beliefs are not strong enough so that Ribcage will slide into Baator."~ */
  IF ~~ THEN REPLY #45054 /* ~Keep listening.~ */ GOTO 9
  IF ~~ THEN REPLY #45055 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #45056 /* ~"For example, Ribcage might one day see the sudden rise of a lawful evil order of clerics, promoting their dark beliefs and converting many citizens to the worship or their lawful evil god. Were this to occur, there would be a good chance that the town would slide off the neutral Outlands, becoming part of the lawful evil plane of Baator."

"Whole layers of planes may move this way. Thus, many wars are wars of belief and faith by necessity. They are the tools by which territory is obtained and held."~ */
  IF ~~ THEN REPLY #45057 /* ~Keep listening.~ */ GOTO 10
  IF ~~ THEN REPLY #45058 /* ~Stop listening, leave.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #45059 /* ~"This, then, is the power of alignment and belief to shape the planes. This session has ended."

"May belief guide your actions and shape the planes to your will. Farewell, all of you."~ */
  IF ~~ THEN REPLY #45060 /* ~Leave.~ */ DO ~SetGlobal("Lecture_3Planes","GLOBAL",2)
~ EXIT
END

IF ~  True()
~ THEN BEGIN 11 // from:
  SAY #45061 /* ~Thin and sharp-featured, his yellow skin covered with tattoos, this man looks over the room and its inhabitants with cold, black eyes. He appears to be giving a lecture.~ */
  IF ~~ THEN REPLY #45063 /* ~Stay for the lecture.~ */ GOTO 0
  IF ~~ THEN REPLY #49738 /* ~Leave.~ */ EXIT
END
