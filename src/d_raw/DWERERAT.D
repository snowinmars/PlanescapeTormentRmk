// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWERERAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DWERERAT~

IF ~  CreatureInArea("AR1600")
Global("CR_Vic","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #23941 /* ~«Людишшшшка! Сссссмерть!» — шипит крысооборотень, бросаясь в атаку.~ */
  IF ~~ THEN REPLY #23946 /* ~Сражаться.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #23947 /* ~Сбежать.~ */ EXIT
END

IF ~  CreatureInArea("AR1600")
Global("CR_Vic","GLOBAL",2)
~ THEN BEGIN 1 // from:
  SAY #23942 /* ~«Людишшшшка! Сссссмерть!» — шипит крысооборотень, бросаясь в атаку.~ */
  IF ~~ THEN REPLY #23948 /* ~Сражаться.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #23949 /* ~Сбежать.~ */ EXIT
END

IF ~  CreatureInArea("AR1600")
Global("CR_Vic","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #23943 /* ~Крысооборотень шипит на тебя, но в атаку не бросается. Вместо этого он пятится, не отрывая от тебя взгляда.~ */
  IF ~~ THEN REPLY #23950 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~  CreatureInArea("AR1600")
GlobalGT("CR_Vic","GLOBAL",2)
~ THEN BEGIN 3 // from:
  SAY #23944 /* ~Человекоподобная крыса скалится на тебя, мотая головой каждый раз, когда ты пытаешься с ней заговорить. Определенно, у нее нет никакого желания разговаривать с людьми.~ */
  IF ~~ THEN REPLY #23951 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~  CreatureInArea("AR1600")
GlobalGT("Zap","GLOBAL",0)
~ THEN BEGIN 4 // from:
  SAY #23945 /* ~«Людишшшшка! Сссссмерть!» — шипит крысооборотень, бросаясь в атаку.~ */
  IF ~~ THEN REPLY #23952 /* ~Сражаться.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #23953 /* ~Сбежать.~ */ EXIT
END

IF ~  CreatureInArea("AR0508")
~ THEN BEGIN 5 // from:
  SAY #67268 /* ~Крысооборотень шипит на тебя, но в атаку не бросается. Вместо этого он пятится, не отрывая от тебя взгляда.~ */
  IF ~~ THEN REPLY #67269 /* ~«Тогда прощай». ~ */ EXIT
END
