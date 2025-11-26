// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART14.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DART14~

IF ~  Global("View_Art_14","AR0608",0)
~ THEN BEGIN 0 // from:
  SAY #34206 /* ~This is a portrait of a grotesque, hook-nosed old crone. The hag's flesh is a sickly blue-gray color; her eyes glow red like the embers of a dying fire. Her chin, long and sharp, juts forward in an extreme under-bite; two yellowed canines protrude upwards from her lower jaw, like small tusks. The smile upon her withered, purplish lips speaks of a horrible secret. A placard reads 'Gray Hag of Oinos.'~ */
  IF ~~ THEN REPLY #42684 /* ~Leave.~ */ DO ~SetGlobal("View_Art_14","AR0608",1)
~ GOTO 2
END

IF ~  Global("View_Art_14","AR0608",1)
~ THEN BEGIN 1 // from:
  SAY #42681 /* ~This is a portrait of a grotesque, hook-nosed old crone. The hag's flesh is a sickly blue-gray color; her eyes glow red like the embers of a dying fire. Her chin, long and sharp, juts forward in an extreme under-bite; two yellowed canines protrude upwards from her lower jaw, like small tusks. The smile upon her withered, purplish lips speaks of a horrible secret. A placard reads 'Gray Hag of Oinos.'~ */
  IF ~~ THEN REPLY #42686 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #42682 /* ~As you begin to turn away from the painting, something in it draws your attention... a strange, tingling sensation arises in the back of your mind... a memory, beginning to surface...~ */
  IF ~~ THEN REPLY #42687 /* ~Try and recall the memory.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,300)
~ GOTO 3
  IF ~~ THEN REPLY #42688 /* ~Turn away, repress the memory.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #42683 /* ~You recall standing, confused, in a maze of briars. The hideous crone from the painting is before you, cackling wildly. You grit your teeth in frustration, wondering why she's laughing at you. "My poor, dear, lovely man-thing!" she croons. "Why, that was your *first* wish!" She points a single bony, clawed finger at your forehead. Your temples begin to throb painfully... and you can remember nothing more.~ */
  IF ~~ THEN REPLY #42689 /* ~Leave.~ */ EXIT
END
