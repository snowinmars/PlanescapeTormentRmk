
IF ~  True()
~ THEN BEGIN 0 // from:
SAY #6595 /* ~Скелет поворачивается к тебе. На лбу у него высечено число «42»; многие его кости, преимущественно челюсти и суставы, обмотаны кожаными ремешками. Его тело скрывает черный комбинезон.~ */
IF ~  Global("42_Secret","GLOBAL",1) ~ THEN REPLY #6612 /* ~«*Кажется*, именно этот мертвец был в моем воспоминании...»~ */ GOTO 1
IF ~~ THEN REPLY #6613 /* ~«Прошу прощения, ты не видал поблизости других скелетов?»~ */ DO ~IncrementGlobalOnceEx("GLOBALSkeleton_Chaotic","GLOBALLaw",-1) ~ GOTO 1
IF ~  Global("Skeleton_Chaotic","GLOBAL",0) ~ THEN REPLY #6614 /* ~«Один вопрос: зачем комбинезон? То есть, я хочу сказать: не похоже, что у тебя есть что скрывать».~ */ DO ~IncrementGlobal("Law","GLOBAL",-1) SetGlobal("Skeleton_Chaotic","GLOBAL",1) ~ GOTO 1
IF ~  Global("Skeleton_Chaotic","GLOBAL",1) ~ THEN REPLY #6615 /* ~«Один вопрос: зачем комбинезон? То есть, я хочу сказать: не похоже, что у тебя есть что скрывать».~ */ GOTO 1
IF ~  Global("Speak_with_Dead","GLOBAL",1) ~ THEN REPLY #6616 /* ~Использовать на трупе свою способность «История костей».~ */ GOTO 2
IF ~~ THEN REPLY #6617 /* ~Внимательно осмотреть скелет.~ */ DO ~SetGlobal("Skeleton_Examine","GLOBAL",1) ~ GOTO 3
IF ~  Global("Skeleton_Examine","GLOBAL",1) NearbyDialog("DMorte") Global("Morte_Skel_Mort_Quip2","GLOBAL",0) ~ THEN REPLY #6618 /* ~Попробовать вытащить скобы из суставов скелета.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip2","GLOBAL",1) ~ EXTERN ~DMORTE~ 110
IF ~  Global("Skeleton_Examine","GLOBAL",1) NearbyDialog("DMorte") Global("Morte_Skel_Mort_Quip2","GLOBAL",1) ~ THEN REPLY #6619 /* ~Попробовать вытащить скобы из суставов скелета.~ */ GOTO 6
IF ~  !NearbyDialog("DMorte") Global("Skeleton_Examine","GLOBAL",1) ~ THEN REPLY #6620 /* ~Попробовать вытащить скобы из суставов скелета.~ */ GOTO 6
IF ~  NearbyDialog("DMorte") Global("Morte_Skel_Mort_Quip","GLOBAL",1) ~ THEN REPLY #6621 /* ~«Эй, а как насчет этого скелета, Морт? Пойдет такое тело?»~ */ GOTO 1
IF ~  NearbyDialog("DMorte") Global("Morte_Skel_Mort_Quip","GLOBAL",0) ~ THEN REPLY #6622 /* ~Оставить скелет в покое.~ */ EXTERN ~DMORTE~ 111
IF ~  !NearbyDialog("DMorte") Global("Morte_Skel_Mort_Quip","GLOBAL",0) ~ THEN REPLY #6623 /* ~Оставить скелет в покое.~ */ EXIT
IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1) ~ THEN REPLY #6624 /* ~Оставить скелет в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3 0.9 3.0 3.3
SAY #6596 /* ~Услышав твой голос, скелет внезапно распрямляется. Он скрещивает руки на груди, ухватившись пальцами за ребра.~ */
IF ~  Global("42_Secret","GLOBAL",1) ~ THEN REPLY #6625 /* ~Скрестить свои руки на груди.~ */ GOTO 4
IF ~  CheckStatGT(Protagonist,12,WIS) Global("42_Secret","GLOBAL",0) ~ THEN REPLY #6626 /* ~Повторять движения скелета... посмотрим, что получится.~ */ GOTO 9
IF ~~ THEN REPLY #6627 /* ~«Э-э...»~ */ GOTO 10
IF ~~ THEN REPLY #6628 /* ~Оставить скелет в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4
SAY #6597 /* ~Скелет не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.~ */
IF ~  NearbyDialog("DMorte") Global("Morte_Skel_Mort_Quip","GLOBAL",0) ~ THEN REPLY #6629 /* ~Оставить скелет в покое.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1) ~ EXTERN ~DMORTE~ 111
IF ~  !NearbyDialog("DMorte") Global("Morte_Skel_Mort_Quip","GLOBAL",0) ~ THEN REPLY #6630 /* ~Оставить скелет в покое.~ */ EXIT
IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1) ~ THEN REPLY #6631 /* ~Оставить скелет в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.5 10.2
SAY #6598 /* ~Удивительно, как этот мешок костей еще не развалился. Его пожелтевшие кости покрыты гипсом и несколькими слоями вонючего клея... В просветах, где видны кости, ты различаешь сотни мелких трещин. Хотя кто-то позаботился о том, чтобы перемотать скелет кожаными ремешками и соединить его кости скобами в суставах, ремешки уже износились, а скобы вот-вот выпадут. ~ */
IF ~  Global("42_Secret","GLOBAL",1) ~ THEN REPLY #63495 /* ~«*Кажется*, именно этот мертвец был в моем воспоминании...»~ */ GOTO 1
IF ~  NearbyDialog("DMorte") Global("Morte_Skel_Mort_Quip2","GLOBAL",0) ~ THEN REPLY #6632 /* ~Попробовать вытащить скобы из суставов скелета.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip2","GLOBAL",1) ~ EXTERN ~DMORTE~ 110
IF ~  NearbyDialog("DMorte") Global("Morte_Skel_Mort_Quip2","GLOBAL",1) ~ THEN REPLY #6633 /* ~Попробовать вытащить скобы из суставов скелета.~ */ GOTO 6
IF ~  !NearbyDialog("DMorte") ~ THEN REPLY #6634 /* ~«Не против, если я возьму немного ремешков и скоб?»~ */ GOTO 1
IF ~  NearbyDialog("DMorte") Global("Morte_Skel_Mort_Quip","GLOBAL",0) ~ THEN REPLY #6635 /* ~Оставить скелет в покое.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1) ~ EXTERN ~DMORTE~ 111
IF ~  !NearbyDialog("DMorte") Global("Morte_Skel_Mort_Quip","GLOBAL",0) ~ THEN REPLY #6636 /* ~Оставить скелет в покое.~ */ EXIT
IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1) ~ THEN REPLY #6637 /* ~Оставить скелет в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 12.0
SAY #6599 /* ~В ответ скелет опускает руки по швам. Кожаная веревка, связывающая торс скелета, лопается, и грудная клетка раскрывается, как двустворчатая дверь. ~ */
IF ~~ THEN REPLY #6638 /* ~Засунуть руку в грудную клетку, пошарить внутри.~ */ GOTO 5
IF ~~ THEN REPLY #6639 /* ~Оставить скелет в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 9.0
SAY #6600 /* ~К твоему удивлению, рука исчезает, едва ты засовываешь ее внутрь грудной клетки... у тебя странное ощущение, что теперь она находится где-то в *другом* месте. Оказавшись внутри, твоя рука натыкается на невидимый предмет. Он размером с кулак и, похоже, прикреплен к позвоночнику скелета.~ */
IF ~~ THEN REPLY #6640 /* ~Вытащить предмет.~ */ DO ~Kill(Myself) ~ GOTO 7
IF ~~ THEN REPLY #6641 /* ~Оставить скелет в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.7 0.8 3.2
SAY #6601 /* ~Скобы свободно выскальзывают из суставов скелета. Скелет разваливается, хотя некоторые кости продолжают шевелиться.~ */
IF ~~ THEN REPLY #6642 /* ~«Прости, Костяшка...»~ */ DO ~Kill(Myself) GiveItemCreate("Spike",Protagonist,1,0,0) GiveItemCreate("Strap",Protagonist,1,0,0) ~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
SAY #6602 /* ~Как только ты вытаскиваешь предмет, скелет внезапно растворяется в воздухе, причем скрепляющие скобы и ремни с грохотом падают на пол. Чем бы ни был этот предмет, похоже, один только он и удерживал кости вместе.~ */
IF ~  Global("42_Secret","GLOBAL",0) ~ THEN REPLY #6643 /* ~Осмотреть предмет.~ */ GOTO 8
IF ~  Global("42_Secret","GLOBAL",1) ~ THEN REPLY #6644 /* ~Осмотреть предмет.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1
SAY #6603 /* ~Похоже на ничем не примечательный кусок железа. Ты не можешь представить, зачем кому-то понадобилось прятать его в грудной клетке скелета.~ */
IF ~~ THEN REPLY #6645 /* ~Осмотреть кусок железа.~ */ DO ~AddexperienceParty(250) ~ GOTO 14
END

IF ~~ THEN BEGIN 9 // from: 1.1 12.1
SAY #6604 /* ~В ответ скелет опускает руки по швам. Кожаная веревка, связывающая корпус скелета, лопается, и грудная клетка раскрывается, как двустворчатая дверь. Ты испытываешь непреодолимое желание засунуть руку внутрь грудной клетки, хотя не можешь объяснить почему.~ */
IF ~~ THEN REPLY #6646 /* ~Засунуть руку в грудную клетку, пошарить внутри.~ */ GOTO 5
IF ~~ THEN REPLY #6647 /* ~Оставить скелет в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.2 12.2
SAY #6605 /* ~Руки скелета опускаются по швам.~ */
IF ~  !NearbyDialog("DMorte") ~ THEN REPLY #6648 /* ~«Э... привет?»~ */ GOTO 12
IF ~  NearbyDialog("DMorte") ~ THEN REPLY #6649 /* ~«Э... привет?»~ */ GOTO 13
IF ~~ THEN REPLY #6650 /* ~Внимательно осмотреть скелет.~ */ DO ~SetGlobal("Skeleton_Examine","GLOBAL",1) ~ GOTO 3
IF ~~ THEN REPLY #6651 /* ~Оставить скелет в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
SAY #6606 /* ~Похоже на ничем не примечательный кусок железа. Должно быть, у твоей предыдущей инкарнации были причины спрятать его здесь.~ */
IF ~~ THEN REPLY #6652 /* ~Внимательно осмотреть кусок железа.~ */ DO ~AddexperienceParty(250) ~ GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 10.0
SAY #6607 /* ~Скелет снова скрещивает руки на груди.~ */
IF ~  Global("42_Secret","GLOBAL",1) ~ THEN REPLY #6653 /* ~Скрестить свои руки на груди.~ */ GOTO 4
IF ~  CheckStatGT(Protagonist,12,WIS) Global("42_Secret","GLOBAL",0) ~ THEN REPLY #6654 /* ~Повторять движения скелета... посмотрим, что получится.~ */ GOTO 9
IF ~~ THEN REPLY #6655 /* ~«Э-э...»~ */ GOTO 10
IF ~~ THEN REPLY #6656 /* ~Оставить скелет в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1
SAY #6608 /* ~Скелет снова скрещивает руки на груди.~ */
IF ~~ THEN EXTERN ~DMORTE~ 112
END

IF ~~ THEN BEGIN 14 // from: 8.0 11.0
SAY #58983 /* ~Как только ты берешь кусок железа в обе руки, чтобы осмотреть, слышится шипение, и металл испаряется, оставив после себя странный кинжал, пригоршню монет, обернутых в грязный платок, и две кровавые капли. Кажется, они были *внутри* куска железа.~ */
IF ~~ THEN REPLY #58984 /* ~Взять предметы и уйти.~ */ DO ~GiveItemCreate("GSKnife",Protagonist,1,0,0) GiveItemCreate("Rags",Protagonist,1,0,0) GiveItemCreate("Clotchrm",Protagonist,1,0,0) GiveItemCreate("Clotchrm",Protagonist,1,0,0) GiveGoldForce(99) ~ EXIT
END 