// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : SWORDOW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~SWORDOW~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50430 /* ~The Sword of Wh'ynn - also known as the Cheater's Blade - looks more like an ornamental dagger than a combat-worthy blade. Though not particularly well balanced, it has been enchanted with powerful magicks and is thus more effective in battle than a more 'common' knife. The Sword of Wh'ynn's greatest power, however, lies in its ability to let its bearer cheat: by merely holding the 'sword' aloft in a suitably melodramatic pose, its owner will beat whatever game the artifact's been found in.~ */
  IF ~~ THEN REPLY #50436 /* ~Cheat: stand with your legs slightly apart, flex all your muscles and thrust the blade triumphantly towards the heavens.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SwordoW_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~~ THEN REPLY #50437 /* ~Put the dagger away for now.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50438 /* ~A surge of power pulses through the Sword of Wh'ynn's blade; there is the peal of thunder somewhere in the distance. In moments, the endgame is upon you...~ */
  IF ~~ THEN REPLY #50439 /* ~Watch it unfold...~ */ EXIT
END
