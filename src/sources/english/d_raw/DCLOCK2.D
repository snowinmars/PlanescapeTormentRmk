// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCLOCK2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCLOCK2~

IF ~  Global("Clock_1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #64234 /* ~This huge clock looks like it has partially melted into the black stone surrounding it... as you look at the clock face, you suddenly feel a strange, crawling sensation worming its way through the back of your skull - you've seen a clock like this before, but not this one. There's something important about it, but you don't know what.~ */
  IF ~~ THEN REPLY #64236 /* ~Leave the clock alone.~ */ JOURNAL #64240 /* ~I came across a large destroyed clock in the Fortress... when I examined it, I felt like I should be *seeing* something on it, but I don't know what. Perhaps I saw another clock similar to this one in the past. ~ */ EXIT
END

IF ~  Global("Clock_1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #64235 /* ~This huge clock looks like it has partially melted into the black stone surrounding it... unlike the other clock with the message, however, this clock face bears no messages or marks. Apparently, your previous incarnation never came across this one.~ */
  IF ~~ THEN REPLY #64237 /* ~Leave the clock alone.~ */ EXIT
END
