
IF ~  True()
~ THEN BEGIN 0 // from:
SAY #35114 /* ~От этого трупа женщины истончается особенно сильный запах формальдегида... пахнет так, как будто ее обработали совсем недавно, и неспроста: труп находится на последней стадии разложения. У нее нет челюсти, часть мяса отвалилась от черепа, обнажая номер «1072», выбитый на кости.~ */
IF ~  Global("Zombie_Chaotic","GLOBAL",0) ~ THEN REPLY #35115 /* ~«Кажется, у нее бывали деньки и получше...»~ */ DO ~IncrementGlobal("Law","GLOBAL",-1) SetGlobal("Zombie_Chaotic","GLOBAL",1) ~ GOTO 1
IF ~  Global("Zombie_Chaotic","GLOBAL",1) ~ THEN REPLY #35132 /* ~«Кажется, у нее бывали деньки и получше...»~ */ GOTO 1
IF ~  Global("Vaxis_Exposed","GLOBAL",1) ~ THEN REPLY #35133 /* ~«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».~ */ GOTO 1
IF ~  Global("Speak_with_Dead","GLOBAL",1) ~ THEN REPLY #35134 /* ~Использовать на трупе свою способность «История костей».~ */ GOTO 2
IF ~  NearbyDialog("DMorte") Global("Morte_Quip","GLOBAL",0) ~ THEN REPLY #35139 /* ~«Было приятно с тобой поболтать. Прощай».~ */ EXTERN ~DMORTE~ 346
IF ~  NearbyDialog("DMorte") Global("Morte_Quip","GLOBAL",0) ~ THEN REPLY #35140 /* ~Оставить труп в покое.~ */ EXTERN ~DMORTE~ 346
IF ~  Global("Morte_Quip","GLOBAL",1) ~ THEN REPLY #35141 /* ~«Было приятно с тобой поболтать. Прощай».~ */ EXIT
IF ~  Global("Morte_Quip","GLOBAL",1) ~ THEN REPLY #35142 /* ~Оставить труп в покое.~ */ EXIT
IF ~  !NearbyDialog("DMorte") Global("Morte_Quip","GLOBAL",0) ~ THEN REPLY #35143 /* ~«Было приятно с тобой поболтать. Прощай».~ */ EXIT
IF ~  !NearbyDialog("DMorte") Global("Morte_Quip","GLOBAL",0) ~ THEN REPLY #35144 /* ~Оставить труп в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
SAY #35116 /* ~Труп не отвечает на твой голос. Возможно, это связано с отсутствием челюсти. Или ей просто нечего сказать.~ */
IF ~  NearbyDialog("DMorte") Global("Morte_Quip","GLOBAL",0) ~ THEN REPLY #35117 /* ~«Тогда прощай». ~ */ EXTERN ~DMORTE~ 346
IF ~  Global("Morte_Quip","GLOBAL",1) ~ THEN REPLY #35130 /* ~«Тогда прощай». ~ */ EXIT
IF ~  !NearbyDialog("DMorte") Global("Morte_Quip","GLOBAL",0) ~ THEN REPLY #35131 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
SAY #35135 /* ~Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.~ */
IF ~  NearbyDialog("DMorte") Global("Morte_Quip","GLOBAL",0) ~ THEN REPLY #35136 /* ~«Тогда прощай». ~ */ EXTERN ~DMORTE~ 346
IF ~  Global("Morte_Quip","GLOBAL",1) ~ THEN REPLY #35137 /* ~«Тогда прощай». ~ */ EXIT
IF ~  !NearbyDialog("DMorte") Global("Morte_Quip","GLOBAL",0) ~ THEN REPLY #35138 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
SAY #35145 /* ~Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.~ */
END 