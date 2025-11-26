// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSDTHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSDTHUG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2933 /* ~This wild-eyed man is hunched over, barking and howling at the top of his lungs. Beneath his thick, matted hair, you can make out a series of strange tattoos... they run the range from screaming faces, to bizarre geometric shapes, to what appear to be lines of verse. He is almost naked, but the dirt and filth covering him gives him the semblance of modesty.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13755 /* ~"Greetings."~ */ EXTERN ~DANNAH~ 89
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13756 /* ~"Greetings."~ */ GOTO 1
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13757 /* ~Give a long, forlorn howl.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_1","GLOBALLaw",-1)
~ EXTERN ~DANNAH~ 89
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13758 /* ~Give a long, forlorn howl.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13759 /* ~Leave the man alone.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13760 /* ~Leave the man alone.~ */ EXTERN ~DMORTE~ 162
END

IF ~~ THEN BEGIN 1 // from: 0.1 4.0
  SAY #2934 /* ~The man whirls on you, and gives a low growl. He draws out the growl for a few seconds, then starts barking violently at you. In the distance, you can hear answering barks.~ */
  IF ~~ THEN REPLY #13761 /* ~"I *said,* 'Greetings.'"~ */ GOTO 3
  IF ~~ THEN REPLY #13762 /* ~Snarl back at him, baring your teeth.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_2","GLOBALLaw",-1)
~ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13763 /* ~"Uh... farewell, then."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13764 /* ~"Uh... farewell, then."~ */ EXTERN ~DMORTE~ 162
END

IF ~~ THEN BEGIN 2 // from: 0.3 4.1
  SAY #13745 /* ~The man whirls on you as he hears your howl, then gives a lop-sided grin and he throws his head back, howling with you. He stops a few moments later, then resumes his loping about, snarling and barking like some feral dog.~ */
  IF ~~ THEN REPLY #13765 /* ~"I said, 'Greetings.'"~ */ GOTO 3
  IF ~~ THEN REPLY #13766 /* ~Snarl back at him, baring your teeth.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_2","GLOBALLaw",-1)
~ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13767 /* ~"Uh... great talking to you, then."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13768 /* ~"Uh... great talking to you, then."~ */ EXTERN ~DMORTE~ 162
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1 2.0 2.1
  SAY #13746 /* ~The man's barking ends with a snarl, and he leaps at you!~ */
  IF ~~ THEN REPLY #13769 /* ~"If this is how you want to die, wolf man..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #13747 /* ~This wild-eyed man is still loping about, barking and howling at the top of his lungs. ~ */
  IF ~~ THEN REPLY #13770 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #13771 /* ~Give a long, forlorn howl.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13772 /* ~Leave the man alone.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13773 /* ~Leave the man alone.~ */ EXTERN ~DMORTE~ 162
END
