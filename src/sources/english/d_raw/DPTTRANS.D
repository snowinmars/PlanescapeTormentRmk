// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPTTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DPTTRANS~

IF ~  NumInPartyGT(1)
~ THEN BEGIN 0 // from:
  SAY #38940 /* ~As you open the gate, a cold wind rushes forth. You begin to shiver as you hear the sound of a voice whispering, although you cannot make out what it says. In a second, it is gone and all is silent... You realize that you have been here before, and you have a strong feeling that your companions must not follow you in.~ */
  IF ~~ THEN REPLY #38951 /* ~"I'm going in alone. Wait out here for me."~ */ EXIT
END
