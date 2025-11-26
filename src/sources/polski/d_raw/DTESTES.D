// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTESTES.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTESTES~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #61602 /* ~Widzisz niskiego, łysiejącego mężczyznę stojącego w czymś w rodzaju korytarza prowadzącego do chwiejnego zajazdu. Człowiek ten z namaszczeniem drapie się po swoich wielkim, bulwiastym nosie.~ */
  IF ~~ THEN REPLY #61604 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #61605 /* ~"Pozwól niechaj spokojnie zajmie się zabiegom higienicznym. Zbadaj to pomieszczenie."~ */ JOURNAL #61617 /* ~.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61603 /* ~Człowiek ów nie spuszcza oczu z własnego nosa. Zezuje tylko nieznacznie w twoim kierunku. "Tak? Czego chcesz?"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #61606 /* ~"Czy mogę tu odpocząć?"~ */ EXIT
END
