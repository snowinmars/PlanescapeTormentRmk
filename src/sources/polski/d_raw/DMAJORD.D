// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMAJORD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMAJORD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #44696 /* ~Zauważasz kostkę z dwoma rękami, dwoma nogami i dwoma małymi skrzydłami wyrastającymi po bokach. Z przodu kostki widać ożywioną twarz. Podchodzisz, a wzrok stwora spoczywa na tobie.~ */
  IF ~~ THEN REPLY #44697 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #44698 /* ~Zignoruj stwora.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #44699 /* ~Stwór patrzy na ciebie niewzruszenie. "Witaj, poszukiwaczu przygód. Witaj w Rubikonie, konstrukcji lochów. Dziękuję, że doświadczenie w lochach chcesz zdobywać w Rubikonie. Możesz tam wejść przez te drzwi."~ */
  IF ~~ THEN REPLY #44700 /* ~"Co to jest Rubikon?"~ */ GOTO 2
  IF ~~ THEN REPLY #44701 /* ~"Co to jest konstrukcja lochów?"~ */ GOTO 3
  IF ~~ THEN REPLY #44702 /* ~"Mniejsza z tym, muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #44703 /* ~Stwór patrzy na ciebie nie odpowiadając.~ */
  IF ~~ THEN REPLY #44704 /* ~"Co to jest konstrukcja lochów?"~ */ GOTO 3
  IF ~~ THEN REPLY #44705 /* ~"Mniejsza z tym, muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0
  SAY #44706 /* ~Stwór mruga do ciebie, ale nie daje znaku, że słyszał twoje pytanie.~ */
  IF ~~ THEN REPLY #44708 /* ~"Co to jest Rubikon?"~ */ GOTO 2
  IF ~~ THEN REPLY #44709 /* ~"Mniejsza z tym, muszę iść. Żegnaj."~ */ EXIT
END
