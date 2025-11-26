// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVAULT9.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DVAULT9~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 12 even though they appear after this state */
~  !Global("Vault_Attack","GLOBAL",1)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45843 /* ~«Добро пожаловать в Хранилище Девятого мира! Чем могу быть полезен в этот славный денек, сигилец?»~ */
  IF ~  Global("Know_Vault","AR0510",0)
~ THEN REPLY #45844 /* ~«Что это за место?»~ */ DO ~SetGlobal("Know_Vault","AR0510",1)
~ GOTO 2
  IF ~  Global("Know_Head","AR0510",0)
~ THEN REPLY #45845 /* ~«Что ты такое?»~ */ DO ~SetGlobal("Know_Head","AR0510",1)
~ GOTO 3
  IF ~  GlobalLT("Warehouse_Clear","GLOBAL",4)
GlobalGT("Warehouse_Clear","GLOBAL",0)
~ THEN REPLY #45846 /* ~«Слышал, тут какие-то проблемы с возвратом вещей».~ */ DO ~SetGlobal("Warehouse_Clear","GLOBAL",4)
~ GOTO 10
  IF ~~ THEN REPLY #45847 /* ~«У меня есть несколько вопросов...»~ */ GOTO 7
  IF ~~ THEN REPLY #66903 /* ~«Прощай».~ */ GOTO 11
END

IF WEIGHT #2 /* Triggers after states #: 12 even though they appear after this state */
~  !Global("Vault_Attack","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45848 /* ~«Дважды добро пожаловать в Хранилище Девятого мира! Чем могу быть полезен в этот славный денек, сигилец?»~ */
  IF ~  Global("Know_Vault","AR0510",0)
~ THEN REPLY #45849 /* ~«Что это за место?»~ */ DO ~SetGlobal("Know_Vault","AR0510",1)
~ GOTO 2
  IF ~  Global("Know_Head","AR0510",0)
~ THEN REPLY #45850 /* ~«Что ты такое?»~ */ DO ~SetGlobal("Know_Head","AR0510",1)
~ GOTO 3
  IF ~~ THEN REPLY #45851 /* ~«Я хотел бы кое-что оставить на хранение».~ */ GOTO 6
  IF ~~ THEN REPLY #45852 /* ~«Я хотел бы кое-что забрать».~ */ GOTO 9
  IF ~  GlobalLT("Warehouse_Clear","GLOBAL",4)
GlobalGT("Warehouse_Clear","GLOBAL",0)
~ THEN REPLY #45853 /* ~«Слышал, тут какие-то проблемы с возвратом вещей».~ */ DO ~SetGlobal("Warehouse_Clear","GLOBAL",4)
~ GOTO 10
  IF ~~ THEN REPLY #45854 /* ~«Прощай».~ */ GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 7.0
  SAY #45855 /* ~«Хранилище Девятого мира с радостью служит складом Нижнему району и всем разумным существам Сигила! Наш девиз: 'Когда одного мира мало!' Мы предоставляем складское пространство тем, кому его не хватает. У нас конкурентные цены! У нас образцовое обслуживание! А наша учтивость по отношению к клиентам известна во всех планах!»~ */
  IF ~~ THEN REPLY #45856 /* ~«Что ты такое?»~ */ GOTO 3
  IF ~~ THEN REPLY #45857 /* ~«Прощай».~ */ GOTO 10
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0 7.1
  SAY #45858 /* ~«Я голос Хранилища Девятого мира. Я здесь, чтобы обслуживать вас, клиент. Скажите, что вам угодно!»~ */
  IF ~~ THEN REPLY #45859 /* ~«Я хотел бы кое-что оставить на хранение».~ */ GOTO 6
  IF ~~ THEN REPLY #45860 /* ~«Я хотел бы кое-что забрать».~ */ GOTO 9
  IF ~~ THEN REPLY #45861 /* ~«Почему это место названо Хранилищем Девятого мира?»~ */ GOTO 4
  IF ~~ THEN REPLY #45862 /* ~«Это место и в правду велико как мир?»~ */ GOTO 5
  IF ~~ THEN REPLY #45863 /* ~«Неважно. Спасибо».~ */ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 3.2 5.2 7.4
  SAY #45864 /* ~«Если честно — я без понятия! Полагаю, владельцы сочли это подходящим названием, или чем-то в этом роде».~ */
  IF ~~ THEN REPLY #45865 /* ~«Я хотел бы кое-что оставить на хранение».~ */ GOTO 6
  IF ~~ THEN REPLY #45866 /* ~«Я хотел бы кое-что забрать».~ */ GOTO 9
  IF ~~ THEN REPLY #45867 /* ~«Это место и в правду велико как мир?»~ */ GOTO 5
  IF ~~ THEN REPLY #45868 /* ~«О. Прощай».~ */ GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 3.3 4.2 7.5
  SAY #45869 /* ~«Нет, это просто маркетинговое преувеличение. Здесь много места, но не настолько».~ */
  IF ~~ THEN REPLY #45870 /* ~«Я хотел бы кое-что оставить на хранение».~ */ GOTO 6
  IF ~~ THEN REPLY #45871 /* ~«Я хотел бы кое-что забрать».~ */ GOTO 9
  IF ~~ THEN REPLY #45872 /* ~«Почему это место названо Хранилищем Девятого мира?»~ */ GOTO 4
  IF ~~ THEN REPLY #45873 /* ~«О. Прощай».~ */ GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 1.2 3.0 4.0 5.0 7.2
  SAY #45874 /* ~«Простите! Похоже, на данный момент мы переполнены! Могу ли я что-нибудь еще для вас сделать?»~ */
  IF ~~ THEN REPLY #45875 /* ~«Я-то думал, что это, должно быть, огромный склад».~ */ GOTO 8
  IF ~~ THEN REPLY #45876 /* ~«Я хотел бы кое-что забрать».~ */ GOTO 9
  IF ~~ THEN REPLY #45877 /* ~«У меня еще несколько вопросов...»~ */ GOTO 7
  IF ~~ THEN REPLY #45878 /* ~«Нет. Прощай».~ */ GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 0.3 6.2 8.0 9.7 10.1 12.0 13.1 15.0 16.0 17.0 18.0 19.0 20.0
  SAY #45879 /* ~«Разумеется! Что я могу для вас сделать?»~ */
  IF ~~ THEN REPLY #45880 /* ~«Что это за место?»~ */ GOTO 2
  IF ~~ THEN REPLY #45881 /* ~«Что ты такое?»~ */ GOTO 3
  IF ~~ THEN REPLY #45882 /* ~«Я хотел бы кое-что оставить на хранение».~ */ GOTO 6
  IF ~~ THEN REPLY #45883 /* ~«Я хотел бы кое-что забрать».~ */ GOTO 9
  IF ~~ THEN REPLY #45884 /* ~«Почему это место названо Хранилищем Девятого мира?»~ */ GOTO 4
  IF ~~ THEN REPLY #45885 /* ~«Это место и в правду велико как мир?»~ */ GOTO 5
  IF ~  GlobalLT("Warehouse_Clear","GLOBAL",4)
GlobalGT("Warehouse_Clear","GLOBAL",0)
~ THEN REPLY #45886 /* ~«Слышал, тут какие-то проблемы с возвратом вещей».~ */ DO ~SetGlobal("Warehouse_Clear","GLOBAL",4)
~ GOTO 10
  IF ~~ THEN REPLY #45887 /* ~«Неважно. Спасибо».~ */ GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #45888 /* ~«Ну-у-у... да, — голос головы звучит слегка смущенно. — Только у нас закончилось место, да и вокруг творится что-то подозрительное, сам не знаю что. Суть проблемы такова: на самом деле мы больше не принимаем вещи на хранение».~ */
  IF ~~ THEN REPLY #45889 /* ~«О. Тогда у меня есть пара вопросов...»~ */ GOTO 7
  IF ~~ THEN REPLY #45890 /* ~«Понятно. Тогда прощай».~ */ GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 1.3 3.1 4.1 5.1 6.1 7.3 10.0 13.0
  SAY #45891 /* ~«И что же в точности вы ищете?»~ */
  IF ~  Global("Vault_Gold","GLOBAL",1)
~ THEN REPLY #45892 /* ~«Я ищу большую сумку с монетами».~ */ GOTO 13
  IF ~  Global("Vault_Gold","GLOBAL",0)
~ THEN REPLY #45893 /* ~«Я ищу большую сумку с монетами».~ */ GOTO 14
  IF ~  Global("Pillow_Quest","GLOBAL",3)
~ THEN REPLY #45894 /* ~«Я здесь, чтобы забрать подушку для Хамриса-гробовщика».~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",4)
GiveItemCreate("DrmPllw",Protagonist,1,0,0)
~ GOTO 17
  IF ~  Global("Plans_Quest","GLOBAL",3)
~ THEN REPLY #45895 /* ~«Мне сказали, что здесь я смогу забрать планы гробницы».~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",4)
GiveItemCreate("TombPlan",Protagonist,1,0,0)
~ GOTO 18
  IF ~  Global("Stolen_Papers","GLOBAL",3)
!Global("Evidence_Papers","GLOBAL",3)
~ THEN REPLY #45896 /* ~«Меня попросили передать, что я здесь за ссудой».~ */ DO ~SetGlobal("Stolen_Papers","GLOBAL",4)
GiveItemCreate("LoanDoc",Protagonist,1,0,0)
~ GOTO 19
  IF ~  Global("Stolen_Papers","GLOBAL",3)
Global("Evidence_Papers","GLOBAL",3)
~ THEN REPLY #45897 /* ~«Меня попросили передать, что я обставил Пикита».~ */ DO ~SetGlobal("Stolen_Papers","GLOBAL",4)
SetGlobal("Evidence_Papers","GLOBAL",4)
GiveItemCreate("Evidence",Protagonist,1,0,0)
GiveItemCreate("LoanDoc",Protagonist,1,0,0)
~ GOTO 20
  IF ~  Global("Stolen_Papers","GLOBAL",4)
Global("Evidence_Papers","GLOBAL",3)
~ THEN REPLY #45898 /* ~«Меня попросили передать, что я обставил Пикита».~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",4)
GiveItemCreate("Evidence",Protagonist,1,0,0)
~ GOTO 20
  IF ~~ THEN REPLY #45899 /* ~«Ничего. Однако у меня есть несколько вопросов...»~ */ GOTO 7
  IF ~~ THEN REPLY #45900 /* ~«Ничего. Прощай».~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 0.2 1.4 2.1 7.6
  SAY #45901 /* ~«Да. Мои хозяева тоже очень этим интересуются. Я бы выяснил, но я всего лишь большое заклинание, наложенное на голову! Я понятия не имею, что случилось со всем складским пространством. Сейчас мы открыты — на случай, если кто спросит! У вас не должно быть проблем с тем, чтобы что-нибудь забрать отсюда. Только спросите!»~ */
  IF ~~ THEN REPLY #45902 /* ~«Тогда ладно. Я хотел бы кое-что забрать».~ */ GOTO 9
  IF ~~ THEN REPLY #45903 /* ~«В таком случае, у меня есть пара вопросов».~ */ GOTO 7
  IF ~~ THEN REPLY #45904 /* ~«Спасибо, так и сделаю. Но позже. Счастливо».~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 0.4 1.5 3.4 4.3 5.3 6.3 7.7 8.1 9.8 10.2 12.1 13.2 15.1 16.1 17.1 18.1 19.1 20.1
  SAY #45905 /* ~«Прощайте! Мы в Хранилище Девятого мира ценим ваш бизнес. Пожалуйста, возвращайтесь».~ */
  IF ~~ THEN REPLY #45906 /* ~«Да уж, конечно».~ */ EXIT
  IF ~~ THEN REPLY #45907 /* ~«Прощай».~ */ EXIT
END

IF WEIGHT #0 ~  Global("Vault_Attack","GLOBAL",1)
~ THEN BEGIN 12 // from:
  SAY #45908 /* ~«Прошу прощения. Пожалуйста, не нападайте на голову».~ */
  IF ~~ THEN REPLY #45909 /* ~«Ладно. Просто у меня есть несколько вопросов...»~ */ DO ~SetGlobal("Vault_Attack","GLOBAL",0)
~ GOTO 7
  IF ~~ THEN REPLY #45910 /* ~«Ладно. Прощай».~ */ DO ~SetGlobal("Vault_Attack","GLOBAL",0)
~ GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 9.0
  SAY #45911 /* ~«Простите, сэр! Эту вещь уже забрали! Не хотите забрать что-нибудь еще?»~ */
  IF ~~ THEN REPLY #45912 /* ~«Да».~ */ GOTO 9
  IF ~~ THEN REPLY #45913 /* ~«Нет. Просто ответь на пару вопросов».~ */ GOTO 7
  IF ~~ THEN REPLY #45914 /* ~«Нет. Прощай».~ */ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY #45915 /* ~«У нас есть сумка с монетами, похожая на описанную вами, сэр! Мне нужно узнать у вас только одно: сколько в ней монет?»~ */
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #45916 /* ~Почему-то эта сумма кажется верной... «1123 монеты».~ */ DO ~SetGlobal("Vault_Gold","GLOBAL",1)
GivePartyGold(1123)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #45918 /* ~Почему-то эта сумма кажется верной... «1123 монеты».~ */ DO ~SetGlobal("Vault_Gold","GLOBAL",1)
GivePartyGold(1123)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #45930 /* ~Почему-то эта сумма кажется верной... «1123 монеты».~ */ DO ~SetGlobal("Vault_Gold","GLOBAL",1)
GivePartyGold(1123)
~ GOTO 15
  IF ~~ THEN REPLY #45937 /* ~Угадать: «1000 монет».~ */ GOTO 16
  IF ~~ THEN REPLY #45938 /* ~Угадать: «500 монет».~ */ GOTO 16
  IF ~~ THEN REPLY #45940 /* ~Угадать: «750 монет».~ */ GOTO 16
  IF ~~ THEN REPLY #45943 /* ~Угадать: «331 монета».~ */ GOTO 16
  IF ~~ THEN REPLY #45945 /* ~Угадать: «2112 монеты».~ */ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 14.2
  SAY #45917 /* ~«Держите, сэр! Спасибо за то, что храните свои вещи в Хранилище Девятого мира! Могу ли я принести вам что-нибудь еще?»~ */
  IF ~~ THEN REPLY #45984 /* ~«Ответь мне еще на пару вопросов...»~ */ GOTO 7
  IF ~~ THEN REPLY #45986 /* ~«Нет, спасибо. Прощай».~ */ GOTO 11
END

IF ~~ THEN BEGIN 16 // from: 14.3 14.4 14.5 14.6 14.7
  SAY #45948 /* ~«Простите, сэр! Должно быть, это не ваша сумка! Могу ли я принести вам что-нибудь еще?»~ */
  IF ~~ THEN REPLY #45950 /* ~«Ответь мне еще на пару вопросов...»~ */ GOTO 7
  IF ~~ THEN REPLY #45952 /* ~«Нет, спасибо. Прощай».~ */ GOTO 11
END

IF ~~ THEN BEGIN 17 // from: 9.2
  SAY #45954 /* ~«Подушка? Конечно же, я могу дать вам подушку... большую КАМЕННУЮ подушку! Вот ваша подушка, господин Хамрис, и хорошего вам сна на ней! Могу ли я принести вам что-нибудь еще?»~ */
  IF ~~ THEN REPLY #45957 /* ~«Ответь мне еще на пару вопросов...»~ */ GOTO 7
  IF ~~ THEN REPLY #45959 /* ~«Нет, спасибо. Прощай».~ */ GOTO 11
END

IF ~~ THEN BEGIN 18 // from: 9.3
  SAY #45962 /* ~«Планы гробницы? Вы не кажетесь мертвым, сэр, хотя если даже это и так, это меня не касается! Вот ваши планы, сэр! Могу ли я принести вам что-нибудь еще?»~ */
  IF ~~ THEN REPLY #45965 /* ~«Ответь мне еще на пару вопросов...»~ */ GOTO 7
  IF ~~ THEN REPLY #45978 /* ~«Нет, спасибо. Прощай».~ */ GOTO 11
END

IF ~~ THEN BEGIN 19 // from: 9.4
  SAY #45990 /* ~«О-о-о! Один из моих тайных паролей! Вот нужные вам бумаги, сэр! Спасибо! Могу ли я принести вам что-нибудь еще?»~ */
  IF ~~ THEN REPLY #45991 /* ~«Ничего. Прощай».~ */ GOTO 7
  IF ~~ THEN REPLY #45992 /* ~«Нет, спасибо. Прощай».~ */ GOTO 11
END

IF ~~ THEN BEGIN 20 // from: 9.5 9.6
  SAY #45993 /* ~«Я, безусловно, надеюсь, что это так, сэр, что бы это не значило! Я всего лишь большая глупая каменная голова! Вот ваши бумаги, сэр, и вот еще! Спасибо! Могу ли я принести вам что-нибудь еще?»~ */
  IF ~~ THEN REPLY #45994 /* ~«Ответь мне еще на пару вопросов...»~ */ GOTO 7
  IF ~~ THEN REPLY #45995 /* ~«Ничего. Прощай».~ */ GOTO 11
END
