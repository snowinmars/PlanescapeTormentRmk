// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCARTIST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCARTIST~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51717 /* ~This attractive, pale-faced girl smiles at you, motioning toward a book full of charcoal sketches. "Greetings and well met, good sir. My name is Ullana; I am an artist by trade, and would gladly make a fine sketch of you for but five copper commons. I can make a serious sketch if you like, or a caricature."~ */
  IF ~~ THEN REPLY #51718 /* ~"No thanks. Farewell."~ */ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #51719 /* ~"Well met once more, good sir. Here to have a portrait drawn? I assure you that you'll be pleased with the outcome..."~ */
  IF ~~ THEN REPLY #51720 /* ~"Not now, thanks. Farewell."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #51721 /* ~She smiles, but somewhat sadly. "Farewell, then. Please do not hesitate to return should you change your mind."~ */
  IF ~~ THEN REPLY #51722 /* ~Leave.~ */ EXIT
END
