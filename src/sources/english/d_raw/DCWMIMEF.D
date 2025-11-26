// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWMIMEF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWMIMEF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #49739 /* ~This young woman - observing some sort of performance artist - looks somewhat puzzled. She turns your way as you draw near.~ */
  IF ~~ THEN REPLY #49740 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #49741 /* ~Leave the woman alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49742 /* ~"I've never seen anything quite like it. I find his act annoying, yet oddly interesting, at the same time."~ */
  IF ~~ THEN REPLY #49743 /* ~"What's going on?"~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49744 /* ~"Never mind that. I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #49745 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.0
  SAY #49746 /* ~She continues to watch the man, who appears to be trapped in an invisible box or cage. "Another time, sir. Please leave me be for the moment."~ */
  IF ~~ THEN REPLY #49747 /* ~"Wait... tell me what's going on here, at least."~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49748 /* ~"Just a few questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #49749 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #49750 /* ~The woman shoots you an annoyed glance. "Despite what *you* might think, sir, I don't care to be harassed on the street by a stranger's questions. Now leave me be!"~ */
  IF ~~ THEN REPLY #49751 /* ~"Wait... tell me what's going on here, at least."~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49752 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0 3.0
  SAY #49753 /* ~"I'm not certain I understand it, myself. This man's act involved all sorts of impersonations and physical comedy, but he never spoke a word. Earlier, a passing mage walked by and the artists mimicked his unusual gait. The mage, angered, cursed him... I think the man can no longer speak, and seems trapped in the same invisible box he earlier pretended to be confined within. He was quite panicked, at first, but seems to have calmed himself and continues with his act."~ */
  IF ~~ THEN REPLY #49754 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #49755 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END
