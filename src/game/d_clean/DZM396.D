
IF ~  HasItem("Bandage","ZM396")
~ THEN BEGIN 0 // from:
SAY #34931 /* ~Этот труп ходит от плиты к плите, перевязывая лежащих на них мертвецов. На левом виске у него выбит номер «396»; его губы крепко зашиты. Ты замечаешь, что труп несет в руках несколько бинтов... похоже, они могут пригодиться.~ */
IF ~  Global("Zombie_Chaotic","GLOBAL",0) ~ THEN REPLY #34932 /* ~«Ты не против, если я одолжу у тебя эти бинты?»~ */ DO ~IncrementGlobal("Law","GLOBAL",-1) SetGlobal("Zombie_Chaotic","GLOBAL",1) ~ GOTO 1
IF ~  Global("Zombie_Chaotic","GLOBAL",1) ~ THEN REPLY #34935 /* ~«Ты не против, если я одолжу у тебя эти бинты?»~ */ GOTO 1
IF ~~ THEN REPLY #34936 /* ~Попробовать забрать бинты у зомби.~ */ DO ~GiveItem("Bandage",Protagonist) ~ GOTO 3
IF ~  Global("Vaxis_Exposed","GLOBAL",1) ~ THEN REPLY #34937 /* ~«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».~ */ GOTO 1
IF ~  Global("Speak_with_Dead","GLOBAL",1) ~ THEN REPLY #34940 /* ~Использовать на трупе свою способность «История костей».~ */ GOTO 2
IF ~~ THEN REPLY #34941 /* ~«Было приятно с тобой поболтать. Прощай».~ */ EXIT
IF ~~ THEN REPLY #45106 /* ~Оставить труп в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.3 4.0 4.1 4.2
SAY #34933 /* ~Труп продолжает пялиться на тебя.~ */
IF ~  HasItem("Bandage","ZM396") ~ THEN REPLY #34934 /* ~Попробовать забрать бинты у зомби.~ */ DO ~GiveItem("Bandage",Protagonist) ~ GOTO 3
IF ~~ THEN REPLY #45107 /* ~Оставить труп в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4 4.3
SAY #34938 /* ~Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.~ */
IF ~~ THEN REPLY #34939 /* ~Оставить труп в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.0
SAY #45108 /* ~Ты протягиваешь руку и забираешь бинты из рук трупа. Труп даже не обратил на это внимания; он продолжает перевязывать тела.~ */
IF ~~ THEN REPLY #45109 /* ~Снова осмотреть труп. ~ */ GOTO 4
IF ~~ THEN REPLY #45110 /* ~Оставить труп в покое.~ */ EXIT
END

IF ~  !HasItem("Bandage","ZM396")
~ THEN BEGIN 4 // from: 3.0
SAY #45111 /* ~Этот труп ходит от плиты к плите, перевязывая лежащих на них мертвецов. Он продолжает выполнять свои обязанности, даже без бинтов. На левом виске у него выбит номер «396», а его губы крепко зашиты. ~ */
IF ~  Global("Zombie_Chaotic","GLOBAL",0) ~ THEN REPLY #45112 /* ~«Извини, что забрал те бинты. Просто мне они нужны больше, чем этим телам».~ */ DO ~IncrementGlobal("Law","GLOBAL",-1) SetGlobal("Zombie_Chaotic","GLOBAL",1) ~ GOTO 1
IF ~  Global("Zombie_Chaotic","GLOBAL",1) ~ THEN REPLY #45113 /* ~«Извини, что забрал те бинты. Просто мне они нужны больше, чем этим телам».~ */ GOTO 1
IF ~  Global("Vaxis_Exposed","GLOBAL",1) ~ THEN REPLY #45114 /* ~«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».~ */ GOTO 1
IF ~  Global("Speak_with_Dead","GLOBAL",1) ~ THEN REPLY #45115 /* ~Использовать на трупе свою способность «История костей».~ */ GOTO 2
IF ~~ THEN REPLY #45116 /* ~«Было приятно с тобой поболтать. Прощай».~ */ EXIT
IF ~~ THEN REPLY #45117 /* ~Оставить труп в покое.~ */ EXIT
END 