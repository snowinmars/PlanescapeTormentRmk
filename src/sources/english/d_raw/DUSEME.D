// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DUSEME.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DUSEME~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3022 /* ~This older man is staring into his stein of ale, misery etched into his features. The battered pewter mug is an unusual one, lightly engraved with strange runes and bearded faces, and covered with a coat of thin frost. He looks up as you approach him. "Greetings... sir..." He seems slightly tipsy.~ */
  IF ~~ THEN REPLY #3023 /* ~Tattoo of Spite~ */ EXIT
  IF ~~ THEN REPLY #7234 /* ~"Something wrong?"~ */ EXIT
END
