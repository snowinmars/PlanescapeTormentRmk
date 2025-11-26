// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTENCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTENCH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9338 /* ~This man is looking at you with a strange, bug-eyed stare. His eyes are *huge*... so huge they look ready to pop out of his sockets and roll across the cobblestones. He nods eagerly as you approach, bobbing his head like a bird... and as you near him, you suddenly notice the smell of urine and feces surrounding him.~ */
  IF ~~ THEN REPLY #9339 /* ~"Greetings."~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9340 /* ~The man sniffles, wiping his nose on his sleeve, then opens his mouth to reveal blackened, rotted gums. "Stories-for-coin, sirrah?" His breath reeks; it smells like this man has been keeping rotten meat stored inside his mouth. "Stories-for-coin?"~ */
  IF ~~ THEN REPLY #9341 /* ~"Who are you?"~ */ EXIT
END
