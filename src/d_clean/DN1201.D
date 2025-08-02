
IF ~  True()
~ THEN BEGIN 0 // from: 1.6 3.0
SAY #44993 /* ~На этой вонючей записке под текстом изображена странная диаграмма. Кажется, она указывает, что тебе следует загнуть уголки записки к центру. На каждом из уголков есть ряд странных отметок: одна отметка в верхнем правом, две — в нижнем правом, три — в нижнем левом и ни одной в верхнем левом.~ */
IF ~~ THEN REPLY #44994 /* ~Загнуть верхний правый уголок. ~ */ DO ~SetGlobal("UR_1201","GLOBAL",1) SetGlobal("1201_Note","GLOBAL",1) ~ GOTO 1
IF ~~ THEN REPLY #44995 /* ~Загнуть нижний правый уголок. ~ */ DO ~SetGlobal("LR_1201","GLOBAL",1) ~ GOTO 1
IF ~~ THEN REPLY #44996 /* ~Загнуть нижний левый уголок. ~ */ DO ~SetGlobal("LL_1201","GLOBAL",1) ~ GOTO 1
IF ~~ THEN REPLY #44997 /* ~Загнуть верхний левый уголок. ~ */ DO ~SetGlobal("UL_1201","GLOBAL",1) ~ GOTO 1
IF ~~ THEN REPLY #44998 /* ~Оставить записку в покое. ~ */ DO ~SetGlobal("UR_1201","GLOBAL",0) SetGlobal("LR_1201","GLOBAL",0) SetGlobal("LL_1201","GLOBAL",0) SetGlobal("UL_1201","GLOBAL",0) SetGlobal("1201_Note","GLOBAL",0) ~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3 1.0 1.1 1.2 1.3 1.4
SAY #44999 /* ~Ты загибаешь уголок таким образом, чтобы он касался центра. ~ */
IF ~  Global("UR_1201","GLOBAL",0) ~ THEN REPLY #45000 /* ~Загнуть верхний правый уголок. ~ */ DO ~SetGlobal("UR_1201","GLOBAL",1) ~ GOTO 1
IF ~  Global("LR_1201","GLOBAL",0) Global("1201_Note","GLOBAL",1) ~ THEN REPLY #45001 /* ~Загнуть нижний правый уголок. ~ */ DO ~SetGlobal("1201_Note","GLOBAL",2) SetGlobal("LR_1201","GLOBAL",1) ~ GOTO 1
IF ~  Global("LR_1201","GLOBAL",0) !Global("1201_Note","GLOBAL",1) ~ THEN REPLY #45002 /* ~Загнуть нижний правый уголок. ~ */ DO ~SetGlobal("LR_1201","GLOBAL",1) SetGlobal("1201_Note","GLOBAL",0) ~ GOTO 1
IF ~  Global("LL_1201","GLOBAL",0) ~ THEN REPLY #45003 /* ~Загнуть нижний левый уголок. ~ */ DO ~SetGlobal("LL_1201","GLOBAL",1) SetGlobal("1201_Note","GLOBAL",0) ~ GOTO 1
IF ~  Global("UL_1201","GLOBAL",0) !Global("1201_Note","GLOBAL",2) ~ THEN REPLY #45004 /* ~Загнуть верхний левый уголок. ~ */ DO ~SetGlobal("UL_1201","GLOBAL",1) SetGlobal("1201_Note","GLOBAL",0) ~ GOTO 1
IF ~  Global("UL_1201","GLOBAL",0) Global("1201_Note","GLOBAL",2) ~ THEN REPLY #45005 /* ~Загнуть верхний левый уголок. ~ */ GOTO 2
IF ~~ THEN REPLY #45006 /* ~Разложить записку, начать заново.~ */ DO ~SetGlobal("UR_1201","GLOBAL",0) SetGlobal("LR_1201","GLOBAL",0) SetGlobal("LL_1201","GLOBAL",0) SetGlobal("UL_1201","GLOBAL",0) SetGlobal("1201_Note","GLOBAL",0) ~ GOTO 0
IF ~~ THEN REPLY #45008 /* ~Разложить записку, оставить ее в покое.~ */ DO ~SetGlobal("UR_1201","GLOBAL",0) SetGlobal("LR_1201","GLOBAL",0) SetGlobal("LL_1201","GLOBAL",0) SetGlobal("UL_1201","GLOBAL",0) SetGlobal("1201_Note","GLOBAL",0) ~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.5
SAY #45015 /* ~Как только ты загибаешь верхний левый уголок, ты видишь, что верхний правый уголок разгибается сам по себе, возвращаясь в прежнее положение. ~ */
IF ~~ THEN REPLY #45016 /* ~Снова загнуть правый верхний уголок. ~ */ GOTO 4
IF ~~ THEN REPLY #45017 /* ~Загнуть нижний правый уголок. ~ */ DO ~SetGlobal("UR_1201","GLOBAL",0) SetGlobal("LR_1201","GLOBAL",0) SetGlobal("LL_1201","GLOBAL",0) SetGlobal("UL_1201","GLOBAL",0) SetGlobal("1201_Note","GLOBAL",0) ~ GOTO 3
IF ~~ THEN REPLY #45018 /* ~Разложить записку, оставить ее в покое.~ */ DO ~SetGlobal("UR_1201","GLOBAL",0) SetGlobal("LR_1201","GLOBAL",0) SetGlobal("LL_1201","GLOBAL",0) SetGlobal("UL_1201","GLOBAL",0) SetGlobal("1201_Note","GLOBAL",0) ~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
SAY #45019 /* ~Как только ты загибаешь нижний левый уголок, на мгновение он остается в таком положении, но затем другие уголки разгибаются. Ничего не происходит. ~ */
IF ~~ THEN REPLY #45020 /* ~Снова осмотреть записку.~ */ GOTO 0
IF ~~ THEN REPLY #45021 /* ~Отложить записку. ~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
SAY #45022 /* ~Как только ты снова загибаешь верхний правый уголок, нижний левый уголок повторяет то же действие. Теперь все уголки касаются центра. Какое-то время ты наблюдаешь за тем, как уголки бумаги поднимаются, превращая записку в небольшую четырехугольную бумажную пирамидку. ~ */
IF ~~ THEN REPLY #45023 /* ~Разогнуть пирамидку. ~ */ DO ~AddexperienceParty(250) ~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
SAY #45024 /* ~Ты отгибаешь стороны пирамидки, и бумага превращается в пыль. Внутри находится треугольная серьга. Она блестит и играет на свету. ~ */
IF ~~ THEN REPLY #45025 /* ~Взять треугольную серьгу...~ */ DO ~GiveItemCreate("TEarring",Protagonist,3,0,0) DestroyPartyItem("N1201",TRUE) ~ EXIT
END
