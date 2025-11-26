// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSKELBAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSKELBAR~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2565 /* ~The skeleton turns toward you, rattling as he does so. A number of his bones are held together with leather straps, and a wine-stained green tunic hangs from his shoulders.~ */
  IF ~~ THEN REPLY #2567 /* ~"Nice tunic. I mean it."~ */ DO ~IncrementGlobalOnceEx("GLOBALSkeleton_Bar_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #2568 /* ~Use your Stories-Bones-Tell ability on the corpse.~ */ GOTO 2
  IF ~  Global("Skeleton_Examine","GLOBAL",0)
~ THEN REPLY #2569 /* ~Examine the skeleton.~ */ GOTO 3
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #2566 /* ~Examine the skeleton.~ */ GOTO 4
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #7072 /* ~"How about this skeleton, Morte? Will it do as a body?"~ */ EXTERN ~DMORTE~ 127
  IF ~~ THEN REPLY #7073 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2570 /* ~The skeleton makes no reply.~ */
  IF ~~ THEN REPLY #2571 /* ~"Great talking to you, bones. Stay healthy."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from: 0.1
  SAY #2572 /* ~This skeleton makes no reply. It looks like it is too far gone to answer any of your questions.~ */
  IF ~~ THEN REPLY #2573 /* ~Leave the skeleton in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY #7069 /* ~Someone has taken care to bind the bones of this skeleton with leather straps, woven around the body in such a pattern that they resemble muscles and tendons. The straps are secured to iron bolts punched into the skeleton's joints. This skeleton is in good condition; its bones, freshly coated in whitewash, have had all traces of its former body scrubbed off of them. ~ */
  IF ~~ THEN REPLY #7074 /* ~Leave the skeleton in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY #7070 /* ~Much like the skeletons in the Mortuary, someone has taken care to bind the bones of this skeleton with leather straps, woven around the body in such a pattern that they resemble muscles and tendons. Unlike the Mortuary skeletons, however, there are no bolts in this skeleton's joints... you can't quite see how the joints are connected. Overall, this skeleton is in good condition; its bones, freshly coated in whitewash, have had all traces of its former body scrubbed off of them.~ */
  IF ~~ THEN REPLY #7075 /* ~Leave the skeleton in peace.~ */ EXIT
END
