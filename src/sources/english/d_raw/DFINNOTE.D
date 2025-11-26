// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFINNOTE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DFINNOTE~

IF ~  Global("P_Journal","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #50376 /* ~These are the notes of the deceased linguist Fin Andlye. They are composed of his research into the language of the Uyo... which seems remarkably similar to the writing you found hidden in the dodecahedron puzzle-box.~ */
  IF ~~ THEN REPLY #50377 /* ~Read over them carefully, see if it sparks a memory.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PlaySoundNotRanged("SPTR_01")
SetGlobal("P_Journal","GLOBAL",4)
~ JOURNAL #50379 /* ~I read over the notes of the linguist Fin Andlye, and found that I already knew the language in which the dodecahedral puzzle-box's writings were penned - the dead tongue of the Uyo. Now, at last, I'll be able to read the thing.~ */ GOTO 1
  IF ~~ THEN REPLY #50378 /* ~Put them away.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50380 /* ~As you read over Fin Andlye's notes regarding the lost language of the Uyo, there is a throbbing sensation in your temples as a memory begins to surface... memories of this language.

You recall letters, words, phrases, until - like a Spire-wind blowing away the blanket of poisonous smog over the Great Foundry - the language is once more revealed to you in its entirety. You should be able to read the writing in the dodecahedron, now.~ */
  IF ~~ THEN REPLY #50381 /* ~Put the notes away.~ */ EXIT
END

IF ~  !Global("P_Journal","GLOBAL",3)
~ THEN BEGIN 2 // from:
  SAY #50382 /* ~These are the notes of the deceased linguist Fin Andlye. They are composed of his research into the language of the Uyo.~ */
  IF ~~ THEN REPLY #50383 /* ~Put them away.~ */ EXIT
END
