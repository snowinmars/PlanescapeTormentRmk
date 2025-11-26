// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : PLACE2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~PLACE2~

IF ~  Global("Jhelai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #38700 /* ~You see a thin man with stained clothes, a hooked nose, and two stubby horns jutting from his forehead. He is stumbling about, and muttering to himself... he stinks of brine, vomit, and cheap wine.[Be sure to put in placeholder 2]~ */
  IF ~  Global("Craddock_Quest","GLOBAL",1)
~ THEN REPLY #38701 /* ~"Greetings."~ */ DO ~SetGlobal("Jhelai","GLOBAL",1)
SetGlobal("Craddock_Quest","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #38702 /* ~"Are you Jhelai? If so, Craddock needs you back at the marketplace."~ */ JOURNAL #30880 /* ~Able Ponder-Thought told me that Ravel had been cast into one of the Lady of Pain's mazes, and that the key to her maze's portal was rumored to be something of hers. Not very helpful.~ */ EXIT
  IF ~~ THEN REPLY #38703 /* ~Pass on by.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #38704 /* ~"Eh?" The man squints blearily at you. "Wahizzit? Wot?"~ */
  IF ~~ THEN REPLY #38705 /* ~"Are you Jhelai? If so, Craddock needs you back at the marketplace."~ */ EXIT
  IF ~~ THEN REPLY #38706 /* ~"Never mind. Sorry to bother you."~ */ EXIT
END
