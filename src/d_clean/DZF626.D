
IF ~  True()
~ THEN BEGIN 0 // from:
SAY #35050 /* ~Левая сторона лица этой женщины выглядит так, словно ее разбили дубиной; плоть, вся во вмятинах и синяках, едва держится на проломленном черепе. Номер «626» вышит на правой щеке, прямо под глазом.~ */
IF ~  Global("Zombie_Chaotic","GLOBAL",0) ~ THEN REPLY #35051 /* ~«Э... здорово тебе досталось».~ */ DO ~IncrementGlobal("Law","GLOBAL",-1) SetGlobal("Zombie_Chaotic","GLOBAL",1) ~ GOTO 1
IF ~  Global("Zombie_Chaotic","GLOBAL",1) ~ THEN REPLY #35068 /* ~«Э... здорово тебе досталось».~ */ GOTO 1
IF ~  Global("Vaxis_Exposed","GLOBAL",1) ~ THEN REPLY #35069 /* ~«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».~ */ GOTO 1
IF ~  Global("Speak_with_Dead","GLOBAL",1) ~ THEN REPLY #35070 /* ~Использовать на трупе свою способность «История костей».~ */ GOTO 2
IF ~  NearbyDialog("DMorte") Global("Morte_Quip","GLOBAL",0) ~ THEN REPLY #35075 /* ~«Было приятно поболтать с тобой. Прощай».~ */ EXTERN ~DMORTE~ 338
IF ~  NearbyDialog("DMorte") Global("Morte_Quip","GLOBAL",0) ~ THEN REPLY #35076 /* ~Оставить труп в покое.~ */ EXTERN ~DMORTE~ 338
IF ~  Global("Morte_Quip","GLOBAL",1) ~ THEN REPLY #35077 /* ~«Было приятно поболтать с тобой. Прощай».~ */ EXIT
IF ~  Global("Morte_Quip","GLOBAL",1) ~ THEN REPLY #35078 /* ~Оставить труп в покое.~ */ EXIT
IF ~  !NearbyDialog("DMorte") Global("Morte_Quip","GLOBAL",0) ~ THEN REPLY #35079 /* ~«Было приятно поболтать с тобой. Прощай».~ */ EXIT
IF ~  !NearbyDialog("DMorte") Global("Morte_Quip","GLOBAL",0) ~ THEN REPLY #35080 /* ~Оставить труп в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
SAY #35052 /* ~Труп продолжает смотреть на тебя одним уцелевшим глазом.~ */
IF ~  NearbyDialog("DMorte") Global("Morte_Quip","GLOBAL",0) ~ THEN REPLY #35053 /* ~«Тогда прощай». ~ */ EXTERN ~DMORTE~ 338
IF ~  Global("Morte_Quip","GLOBAL",1) ~ THEN REPLY #35066 /* ~«Тогда прощай». ~ */ EXIT
IF ~  !NearbyDialog("DMorte") Global("Morte_Quip","GLOBAL",0) ~ THEN REPLY #35067 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
SAY #35071 /* ~Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.~ */
IF ~  NearbyDialog("DMorte") Global("Morte_Quip","GLOBAL",0) ~ THEN REPLY #35072 /* ~«Тогда прощай». ~ */ EXTERN ~DMORTE~ 338
IF ~  Global("Morte_Quip","GLOBAL",1) ~ THEN REPLY #35073 /* ~«Тогда прощай». ~ */ EXIT
IF ~  !NearbyDialog("DMorte") Global("Morte_Quip","GLOBAL",0) ~ THEN REPLY #35074 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
SAY #35081 /* ~Этот труп не шевелится. Кажется, он далек от того, чтобы отвечать на твои вопросы.~ */
END 