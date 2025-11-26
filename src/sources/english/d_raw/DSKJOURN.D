// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSKJOURN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSKJOURN~

IF ~  Global("Maze_Journal","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #60402 /* ~This appears to be some sort of journal. Sheets of dried human skin have been stretched across a framework of bone, and strangely enough, it appears the sheets of skin have healed together at the seams, forming the spine of a makeshift book. It looks like the outer sheets of skin form a cover for the other skin sheets locked inside the bone frame. ~ */
  IF ~~ THEN REPLY #60403 /* ~Examine the exterior.~ */ GOTO 1
  IF ~~ THEN REPLY #61187 /* ~Examine the skin.~ */ GOTO 2
  IF ~~ THEN REPLY #61188 /* ~Examine the frame.~ */ GOTO 3
  IF ~~ THEN REPLY #61189 /* ~Unlock the bone frame. ~ */ GOTO 4
  IF ~~ THEN REPLY #61190 /* ~Leave the strange journal alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0 3.0
  SAY #61191 /* ~A series of symbols have been written in blood across the exterior of the sheets of skin, but you can't make them out; they appear to be some form of writing, but they seem to be written upside down, right to left, and at odd angles that make your eyes hurt. ~ */
  IF ~~ THEN REPLY #61192 /* ~Examine the skin.~ */ GOTO 2
  IF ~~ THEN REPLY #61193 /* ~Examine the frame.~ */ GOTO 3
  IF ~~ THEN REPLY #61194 /* ~Unlock the bone frame. ~ */ GOTO 4
  IF ~~ THEN REPLY #61195 /* ~Leave the strange journal alone.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0 3.1
  SAY #61196 /* ~The skin looks to be the same pallor as yours; its scarred gray surface reminds you of a zombie's hide, and the pages feel more like cured leather than skin.~ */
  IF ~~ THEN REPLY #61197 /* ~Examine the exterior.~ */ GOTO 1
  IF ~~ THEN REPLY #61198 /* ~Examine the frame.~ */ GOTO 3
  IF ~~ THEN REPLY #61199 /* ~Unlock the bone frame. ~ */ GOTO 4
  IF ~~ THEN REPLY #61200 /* ~Leave the strange journal alone.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.1 2.1
  SAY #61201 /* ~Despite the crudity of the writing, you have to admit the design of the bone frame is actually quite intricate; the bones have been carved so that they snap neatly together. It looks like the bones can be unhooked from each other, allowing the book to be opened and read. ~ */
  IF ~~ THEN REPLY #61202 /* ~Examine the exterior.~ */ GOTO 1
  IF ~~ THEN REPLY #61203 /* ~Examine the skin.~ */ GOTO 2
  IF ~~ THEN REPLY #61204 /* ~Unlock the bone frame. ~ */ GOTO 4
  IF ~~ THEN REPLY #61205 /* ~Leave the strange journal alone.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.2 2.2 3.2
  SAY #61206 /* ~You unlock the bone frame, which unfolds with a neat *snap.* You open the book, and study the pages... they are filled with the same strange series of symbols as were on the exterior cover, and they don't seem to make any sense. ~ */
  IF ~~ THEN REPLY #61207 /* ~Try and puzzle out the symbols.~ */ GOTO 5
  IF ~~ THEN REPLY #61208 /* ~Re-hook the bone frame and leave the journal alone.~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0 5.0
  SAY #61209 /* ~The symbols don't seem to follow any pattern - at least any that you can see. The angles and the pictures displayed seem to be completely arbitrary, but you can't be absolutely sure.~ */
  IF ~~ THEN REPLY #61210 /* ~Try and puzzle out the symbols again.~ */ GOTO 5
  IF ~~ THEN REPLY #61211 /* ~Re-hook the bone frame and leave the journal alone.~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.1
  SAY #61212 /* ~As you re-hook the bone frame, you are suddenly struck with a strange thought - that the pages of the interior aren't *supposed* to make any sense. You... whoever you were at the time... put the symbols there to deceive anyone looking to read the real contents, which are hidden somewhere else in the journal frame. ~ */
  IF ~~ THEN REPLY #61213 /* ~Examine the bone frame.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #61214 /* ~You examine the edge of the frame, and you notice that one of the bones has a hairline fracture around one of its ends; you put your hand over the edge and twist off the top of the bone, revealing a hollow space. Inside the space is a small, rolled-up scrap of skin. ~ */
  IF ~~ THEN REPLY #61215 /* ~Pull out the skin, read it.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0 12.0
  SAY #61216 /* ~This scrap of skin is covered in writing; it looks like someone kept writing over it, again and again, until it is almost illegible. Nonetheless, you can make out some of the words and some of the symbols...~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #61217 /* ~"TRAPPed TraPped LADY'S WILL be done DODge her gaze... too MANY I KILL'd, too MANY strangle and kill and stop the BREATH in their throats... there's a WAY OUT I KNOW it then I'll give the BLADed one the laugh..."~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #61218 /* ~"...ONE of the ARCHEZ holds way Out, ONE of them does, ONE has the way out, can't just keep GOING through them one at a time, maybe - maybe I should go through one, THEN walk back to the same portal without..."~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #61219 /* ~The entry trails off into indecipherable scrawls. For some reason, you have a feeling that was the last entry... either the incarnation died in the maze or escaped somehow.~ */
  IF ~  Global("Current_Area","GLOBAL",1900)
~ THEN REPLY #61220 /* ~Hook the pages back together and put the journal away.~ */ DO ~SetGlobal("Maze_Journal","GLOBAL",1)
SetGlobal("Journal","GLOBAL",1)
~ JOURNAL #61223 /* ~I found one of my journals in the Lady's mazes. Inscribed in it was a piece of skin that had some insane ramblings on it. Whoever I was when I wrote this, I was definitely a few stones short of a portal. ~ */ EXIT
  IF ~  !Global("Current_Area","GLOBAL",1900)
~ THEN REPLY #61221 /* ~Hook the pages back together and put the journal away.~ */ DO ~SetGlobal("Maze_Journal","GLOBAL",1)
~ EXIT
END

IF ~  Global("Maze_Journal","GLOBAL",1)
~ THEN BEGIN 12 // from:
  SAY #61224 /* ~This appears to be some sort of journal. Sheets of dried human skin have been stretched across a framework of bone, and strangely enough, it appears the sheets of skin have healed together at the seams, forming the spine of a makeshift book. It looks like the outer sheets of skin form a cover for the other skin sheets locked inside the bone frame. ~ */
  IF ~~ THEN REPLY #61225 /* ~Un-hook the bone frame and read the scrap of skin inside...~ */ GOTO 8
  IF ~~ THEN REPLY #61226 /* ~Leave the strange journal alone.~ */ EXIT
END
