// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : WERERAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~WERERAT~

IF ~  Dead("Mantuok")
~ THEN BEGIN 0 // from:
  SAY #29298 /* ~"Huuuuman scum! DIEEEEEEE!" The wererat flings itself at you.~ */
  IF ~~ THEN REPLY #29304 /* ~"Dammit, I just wanted to talk!"~ */ DO ~Enemy()
~ EXIT
END

IF ~  True()
~ THEN BEGIN 1 // from:
  SAY #29299 /* ~The ill-favored rat-man hisses at you: "What do you want, human?"~ */
  IF ~~ THEN REPLY #29305 /* ~"Who are you?"~ */ GOTO 2
  IF ~~ THEN REPLY #29306 /* ~"Where's Lothar?"~ */ GOTO 3
  IF ~~ THEN REPLY #29307 /* ~"What is this place?"~ */ GOTO 4
  IF ~~ THEN REPLY #29308 /* ~"Do you know Mantuok?"~ */ GOTO 5
  IF ~~ THEN REPLY #29309 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #29300 /* ~The wererat looks you up and down scornfully. "None of your businesssss, human." It chitters its laughter.~ */
  IF ~~ THEN REPLY #29310 /* ~"Fine, then. Where's Lothar?"~ */ GOTO 3
  IF ~~ THEN REPLY #29311 /* ~"What is this place?"~ */ GOTO 4
  IF ~~ THEN REPLY #29312 /* ~"Where's Mantuok?"~ */ GOTO 5
  IF ~~ THEN REPLY #29313 /* ~"Forget it."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 5.0
  SAY #29301 /* ~"The Master ... should be here. No doubt... he is watching you." Its whiskers twitch at you. "Begone now! I wish to speak no more to you!"~ */
  IF ~~ THEN REPLY #29314 /* ~"All right, then."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 5.1
  SAY #29302 /* ~"This is our nest. You will not be back here often, will you, human? We do not need your kind."~ */
  IF ~~ THEN REPLY #29315 /* ~"You don't have to worry about that. I think the smell would overpower me anyway. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #29316 /* ~"Probably not. It's not exactly a pleasure spot. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3 2.2
  SAY #29303 /* ~"Mantuok? What do you want with Mantuok? Mantuok will find you if you need Mantuok." It chitters and backs away from you.~ */
  IF ~~ THEN REPLY #29317 /* ~"Then tell me where I can find Lothar."~ */ GOTO 3
  IF ~~ THEN REPLY #29318 /* ~"Then tell me about this place."~ */ GOTO 4
  IF ~~ THEN REPLY #29319 /* ~"Fine. Farewell."~ */ EXIT
END
