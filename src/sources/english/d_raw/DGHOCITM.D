// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHOCITM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHOCITM~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 0 // from:
  SAY #19675 /* ~This drooling, yellow-eyed ghoul reeks of blood and carrion. It picks at its crooked fangs with long, filthy talons, constantly snuffling the air around it. His flesh has turned a sickly green color, and is covered in rot and weeping sores.~ */
  IF ~~ THEN REPLY #19683 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #19684 /* ~Leave the ghoul be.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 6.0
  SAY #19676 /* ~The ghoul narrows his eyes and snarls at you. Its tongue - no less than two hands long - curls out to lick at its scabby lips.~ */
  IF ~~ THEN REPLY #19685 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #19686 /* ~"I must be taking my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19677 /* ~The ghoul continues to eye you hungrily. He clenches and unclenches his clawed fists, as if fighting the urge to leap upon you and feed.~ */
  IF ~~ THEN REPLY #19687 /* ~"Calm yourself, and answer my questions."~ */ GOTO 3
  IF ~~ THEN REPLY #19688 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #19678 /* ~The ghoul hisses at you: "Silence, meat! No talk! I no lissen to meat-thing! I hear only your heart, blood in meat's veins, sweet, delicious blood... tasty, rich, heart-meat..." Drool pours from its mouth, spattering the dusty tiles. "NO TALK!"~ */
  IF ~~ THEN REPLY #19689 /* ~"Farewell, then."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #19679 /* ~The ghoul hisses at you as you approach: "Away! Go away! I no *talk* to meat thing, I no *listen,* meat! GO!"~ */
  IF ~~ THEN REPLY #19690 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Warn","AR1500",0)
~ THEN BEGIN 5 // from:
  SAY #19680 /* ~This drooling, yellow-eyed ghoul reeks of blood and carrion. It picks at its crooked fangs with long, filthy talons, constantly snuffling the air around it. His flesh has turned a sickly green color, and is covered in rot and weeping sores.~ */
  IF ~~ THEN DO ~SetGlobal("Morte_DN_Warn","AR1500",1)
~ EXTERN ~DMORTE~ 202
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Warn","AR1500",1)
~ THEN BEGIN 6 // from:
  SAY #50419 /* ~This drooling, yellow-eyed ghoul reeks of blood and carrion. It picks at its crooked fangs with long, filthy talons, constantly snuffling the air around it. His flesh has turned a sickly green color, and is covered in rot and weeping sores.~ */
  IF ~~ THEN REPLY #50420 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #50421 /* ~Leave the ghoul be.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END
