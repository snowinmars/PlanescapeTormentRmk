
IF ~  Global("Topple_985","GLOBAL",0)
~ THEN BEGIN 0 // from:
SAY #45515 /* ~Этот труп, номер «985», встал как вкопанный; судя по состоянию его левой ноги, похоже, что его колено сгнило либо изъедено трупной плесенью. Труп неуверенно качается вперед и назад, пытаясь сохранить равновесие.~ */
IF ~  NearbyDialog("Dmorte") ~ THEN REPLY #45516 /* ~Толкнуть труп.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_ZM985_1","GLOBALLaw",-1) IncrementGlobalOnceEx("GLOBALEvil_ZM985_1","GLOBALGood",-1) PlaySoundNotRanged("SPE_11") SetAnimState(Myself,ANIM_MIMEDIE) ~ EXTERN ~DMORTE~ 482
IF ~  !NearbyDialog("Dmorte") ~ THEN REPLY #45517 /* ~Толкнуть труп.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_ZM985_1","GLOBALLaw",-1) IncrementGlobalOnceEx("GLOBALEvil_ZM985_1","GLOBALGood",-1) PlaySoundNotRanged("SPE_11") SetAnimState(Myself,ANIM_MIMEDIE) ~ GOTO 3
IF ~  NearbyDialog("Dmorte") ~ THEN REPLY #45518 /* ~Помочь трупу остаться в равновесии.~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_ZM985_1","GLOBALLaw",1) IncrementGlobalOnceEx("GLOBALGood_ZM985_1","GLOBALGood",1) ~ GOTO 4
IF ~  !NearbyDialog("Dmorte") ~ THEN REPLY #45519 /* ~Помочь трупу остаться в равновесии.~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_ZM985_1","GLOBALLaw",1) IncrementGlobalOnceEx("GLOBALGood_ZM985_1","GLOBALGood",1) ~ GOTO 6
IF ~  Global("Vaxis_Exposed","GLOBAL",1) ~ THEN REPLY #45520 /* ~«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».~ */ GOTO 1
IF ~  Global("Speak_with_Dead","GLOBAL",1) ~ THEN REPLY #45521 /* ~Использовать на трупе свою способность «История костей».~ */ GOTO 2
IF ~~ THEN REPLY #45522 /* ~«Было приятно с тобой поболтать. Прощай».~ */ EXIT
IF ~~ THEN REPLY #45523 /* ~Оставить труп в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.4 5.0 5.1 5.2
SAY #45524 /* ~Труп самозабвенно смотрит вперед, не подавая никаких признаков того, что он тебя услышал.~ */
IF ~~ THEN REPLY #45525 /* ~Оставить труп в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.5 5.3
SAY #45526 /* ~Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.~ */
IF ~~ THEN REPLY #45527 /* ~Оставить труп в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 6.0
SAY #45528 /* ~В левой ноге трупа раздается хруст, и тело падает, как срубленное дерево. Туловище ударяется о каменные плиты и раскалывается, как гнилая дыня; гной, булькая, вытекает из трещин. К твоему удивлению, никто даже не заметил падения мертвеца... и что еще более странно, левая нога продолжает стоять там, где стояло тело, словно по стойке «смирно». Спустя мгновенье, нога падает с сочным гулким ударом.~ */
IF ~~ THEN DO ~PlaySoundNotRanged("SPE_11") SetAnimState(Myself,ANIM_MIMEDIE) CreateItem("Limb985",1,0,0) SetGlobal("Topple_985","GLOBAL",1) Kill(Myself) Deactivate(Myself) ~ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 0.2
SAY #45530 /* ~Ты тянешься к левой руке трупа, желая помочь ему устоять. Но когда ты хватаешься за его руку, труп неожиданно кренится вправо, и ты скорее тянешь его, чем помогаешь удержаться...~ */
IF ~~ THEN DO ~PlaySoundNotRanged("SPE_11") SetAnimState(Myself,ANIM_MIMEDIE) ~ EXTERN ~DMORTE~ 482
END

IF ~  GlobalGT("Topple_985","GLOBAL",0)
~ THEN BEGIN 5 // from:
SAY #45531 /* ~Похоже, кто-то заменил этому трупу левую руку и ногу от другого тела. Левая нога короче, чем надо, но теперь, по крайней мере, труп может стоять.~ */
IF ~  Global("Zombie_Chaotic","GLOBAL",0) ~ THEN REPLY #45532 /* ~«Извини, что сбил тебя с ног. Я случайно».~ */ DO ~IncrementGlobal("Law","GLOBAL",-1) SetGlobal("Zombie_Chaotic","GLOBAL",1) ~ GOTO 1
IF ~  Global("Zombie_Chaotic","GLOBAL",1) ~ THEN REPLY #45533 /* ~«Извини, что сбил тебя с ног. Я случайно».~ */ GOTO 1
IF ~  Global("Vaxis_Exposed","GLOBAL",1) ~ THEN REPLY #45534 /* ~«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».~ */ GOTO 1
IF ~  Global("Speak_with_Dead","GLOBAL",1) ~ THEN REPLY #45535 /* ~Использовать на трупе свою способность «История костей».~ */ GOTO 2
IF ~~ THEN REPLY #45536 /* ~«Было приятно с тобой поболтать. Прощай».~ */ EXIT
IF ~~ THEN REPLY #45537 /* ~Оставить труп в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.3
SAY #45538 /* ~Ты тянешься к левой руке трупа, желая помочь ему устоять. Но когда ты хватаешься за его руку, труп неожиданно кренится вправо, и ты скорее тянешь его, чем помогаешь удержаться...~ */
IF ~~ THEN REPLY #45539 /* ~«Ой-ой...»~ */ DO ~PlaySoundNotRanged("SPE_11") SetAnimState(Myself,ANIM_MIMEDIE) ~ GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 3.0
SAY #64205 /* ~Рассматривая гнилые остатки тела, ты замечаешь, левая рука совсем не тронута: она отвалилась от туловища во время падения, и совсем не похоже, чтобы она была поражена трупным гниением, как это случилось с остальной частью тела.~ */
IF ~~ THEN REPLY #64206 /* ~«Хм-м. Думаю, я смогу найти применение этой руке...»~ */ EXIT
END 