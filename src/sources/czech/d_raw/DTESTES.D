// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTESTES.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTESTES~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #61602 /* ~Vidíš malého, plešatého muže stojícího v čemsi, co má sloužit jako vstupní hala v tomto zchátralém hotýlku. Jeho husté obočí je svraštěné koncentraní když se snaží zaostřit na cosi na jeho velkém, cibulovitém nose.~ */
  IF ~~ THEN REPLY #61604 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #61605 /* ~Nechej muže i jeho nos být. Prohledej místnost.~ */ JOURNAL #61617 /* ~Tohle je zkouška. Byl to opravdický zápis do deníku... určitě ano, jsem si jistý.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61603 /* ~Muž se neobtěžoval vzhlédnout. Místo toho si stále švidral na špičku nosu. "Jo? Co chceš?"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #61606 /* ~"Můžu si tu odpočinout?"~ */ EXIT
END
