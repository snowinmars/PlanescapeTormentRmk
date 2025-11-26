// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWERERAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DWERERAT~

IF ~  CreatureInArea("AR1600")
Global("CR_Vic","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #23941 /* ~Szczurołak syczy na ciebie wściekle: "Człowiekuuu! Zginieszszsz!" Spręża się do ataku.~ */
  IF ~~ THEN REPLY #23946 /* ~Walcz.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #23947 /* ~Uciekaj.~ */ EXIT
END

IF ~  CreatureInArea("AR1600")
Global("CR_Vic","GLOBAL",2)
~ THEN BEGIN 1 // from:
  SAY #23942 /* ~Szczurołak syczy na ciebie wściekle: "Człowiekuuu! Zginieszszsz!" Spręża się do ataku.~ */
  IF ~~ THEN REPLY #23948 /* ~Walcz.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #23949 /* ~Uciekaj.~ */ EXIT
END

IF ~  CreatureInArea("AR1600")
Global("CR_Vic","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #23943 /* ~Szczurołak syczy na ciebie wściekle, ale dziwny trafem pohamowuje się przed atakiem na ciebie. Zamiast tego wycofuje się chyłkiem, nie spuszczając cię z oczu.~ */
  IF ~~ THEN REPLY #23950 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~  CreatureInArea("AR1600")
GlobalGT("CR_Vic","GLOBAL",2)
~ THEN BEGIN 3 // from:
  SAY #23944 /* ~Humanoidalny szczur skrzeczy coś do ciebie i potrząsa głową, jak gdyby chciał ci coś powiedzieć. Ale najwidoczniej umiejętność posługiwania się językiem zrozumiałym dla ludzi, to już dla niego zamknięty rozdział.~ */
  IF ~~ THEN REPLY #23951 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~  CreatureInArea("AR1600")
GlobalGT("Zap","GLOBAL",0)
~ THEN BEGIN 4 // from:
  SAY #23945 /* ~Szczurołak syczy na ciebie wściekle: "Człowiekuuu! Zginieszszsz!" Spręża się do ataku.~ */
  IF ~~ THEN REPLY #23952 /* ~Walcz.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #23953 /* ~Uciekaj.~ */ EXIT
END

IF ~  CreatureInArea("AR0508")
~ THEN BEGIN 5 // from:
  SAY #67268 /* ~Szczurołak syczy na ciebie wściekle, ale powstrzymuje się przed atakiem. Zamiast tego cofa się nieznacznie, nie spuszczając cię z oka.~ */
  IF ~~ THEN REPLY #67269 /* ~"Zatem żegnaj."~ */ EXIT
END
