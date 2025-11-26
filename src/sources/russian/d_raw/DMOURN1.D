// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMOURN1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DMOURN1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #7078 /* ~Этот тленный одет в длинную темную мантию, его руки вложены в рукава. Он склонил голову и поет в неторопливом темпе с остальными тленными, окружающими его.~ */
  IF ~~ THEN REPLY #7079 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #7810 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0 4.0
  SAY #7759 /* ~Тленный, скорее всего, услышал тебя, но вида не подал.~ */
  IF ~~ THEN REPLY #7811 /* ~«Я хотел бы немного поговорить с тобой».~ */ GOTO 3
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7812 /* ~Слушать их пение.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #7813 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #7814 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #7815 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7816 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7817 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #7818 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #7819 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.1 11.0 34.1
  SAY #7760 /* ~Все тленные поют в одном тоне и ритме. Напев каждые несколько минут переходит в крик, после чего медленно стихает, подобно эху. Когда и оно стихает, тленные произносят несколько строк во славу «Истинной Смерти», после чего продолжают петь.~ */
  IF ~~ THEN REPLY #7820 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #7821 /* ~Оставить их — пускай себе поют.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 24.0 25.0 26.0 27.0 39.0
  SAY #7761 /* ~Тленный поднимает голову. Он не перестает петь в том же темпе и тоне, что и другие тленные вокруг него.~ */
  IF ~~ THEN REPLY #7823 /* ~«Что ты делаешь?»~ */ GOTO 4
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #7824 /* ~«Я оплакиваю покойника».~ */ GOTO 5
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #7825 /* ~«Я здесь ради того, кто потерял другого».~ */ GOTO 35
  IF ~~ THEN REPLY #7828 /* ~«Извини за беспокойство. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #7762 /* ~Тленный не обращает на тебя внимания — вместо этого он кивает и продолжает петь.~ */
  IF ~~ THEN REPLY #7839 /* ~«Я хотел бы поговорить с тобой».~ */ GOTO 1
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7840 /* ~Слушать их пение.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #7841 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #7842 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #7843 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7844 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7845 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #7846 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #7847 /* ~Оставить его в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 20.2
  SAY #7763 /* ~Плакальщик внезапно останавливается и рассматривает тебя. «Скорбишь ли ты по усопшему?»~ */
  IF ~~ THEN REPLY #7848 /* ~«Нет. Смерть не тревожит мои чувства».~ */ GOTO 11
  IF ~  Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #7849 /* ~Правда: «Да... Мне кажется, что я в ответе за смерть невинной женщины, Дейонарры. Меня не дает покоя не только это: я чувствую вину за то горе, которое причинил ее отцу».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_1","GLOBALGood",3)
~ GOTO 6
  IF ~  Global("Xachariah","GLOBAL",2)
~ THEN REPLY #7850 /* ~Правда: «Да... Я в ответе за смерть невинного мужчины, Захарии. Его смерть не дает мне покоя».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_2","GLOBALGood",2)
~ GOTO 7
  IF ~  GlobalGT("Nature","GLOBAL",0)
~ THEN REPLY #7851 /* ~Правда: «Да... Я в ответе за смерть множества невинных на многих планах. Я едва выношу страдания, причиняемые осознанием этого факта».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_3","GLOBALGood",5)
~ GOTO 8
  IF ~  Global("Wife_of_Angyar","GLOBAL",2)
~ THEN REPLY #7852 /* ~«Не я. Есть женщина, жена Ангиара, которая потеряла своего сына. Скорбь повисла на ней тяжелой ношей».~ */ GOTO 9
  IF ~~ THEN REPLY #7853 /* ~Ложь: «Нет, э-э, я говорю о своем друге, э-э... Адане: он скорбит по умершему».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourn_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALAdahn_Mourn_1","GLOBALAdahn",4)
~ GOTO 10
  IF ~~ THEN REPLY #7854 /* ~«Да, последняя смерть принесла мне много страданий и боли».~ */ GOTO 36
  IF ~~ THEN REPLY #7855 /* ~«Ну, э-э, прежде чем мы поговорим об этом, у меня есть к тебе несколько вопросов...»~ */ GOTO 20
  IF ~~ THEN REPLY #14817 /* ~«Прошу прощения... Я ошибся. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #7764 /* ~«Мы будем оплакивать твою боль и боль ее отца, если это не причинит никому обиду».~ */
  IF ~~ THEN REPLY #7856 /* ~«Если это возможно — это бы сильно облегчило мою боль и боль ее отца».~ */ DO ~SetGlobal("Chant","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #7857 /* ~«Нет, в этом нет нужды. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY #7765 /* ~«Мы будем оплакивать твою боль, если таково твое желание».~ */
  IF ~~ THEN REPLY #7858 /* ~«Если это возможно — это бы сильно облегчило мою боль».~ */ DO ~SetGlobal("Chant","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #7859 /* ~«Нет, в этом нет нужды. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 5.3
  SAY #7766 /* ~«Мы будем оплакивать твою боль, если таково твое желание».~ */
  IF ~~ THEN REPLY #7860 /* ~«Если это возможно — это бы сильно облегчило мою боль».~ */ DO ~SetGlobal("Chant","GLOBAL",3)
~ GOTO 11
  IF ~~ THEN REPLY #7861 /* ~«Нет, в этом нет нужды. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 5.4 35.1
  SAY #7767 /* ~«Мы будем оплакивать ее боль, если это не причинит ей обиду».~ */
  IF ~~ THEN REPLY #7862 /* ~«Если это возможно — это бы сильно облегчило ее боль».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_4","GLOBALGood",2)
SetGlobal("Chant","GLOBAL",4)
~ GOTO 11
  IF ~~ THEN REPLY #7863 /* ~«Нет, в этом нет нужды. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 5.5 35.2
  SAY #7768 /* ~«Мы будем оплакивать его боль, если это не причинит ему обиду».~ */
  IF ~~ THEN REPLY #7864 /* ~«Если это возможно — это бы сильно облегчило его боль».~ */ DO ~SetGlobal("Chant","GLOBAL",5)
~ GOTO 11
  IF ~~ THEN REPLY #7865 /* ~«Нет, в этом нет нужды. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 5.0 6.0 7.0 8.0 9.0 10.0 20.4 35.0 36.0 38.0
  SAY #7769 /* ~Тленный кивает и возвращается к пению.~ */
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7866 /* ~Слушать их пение.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #7867 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #7868 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #7869 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7870 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7871 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #7872 /* ~Слушать их пение.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #7873 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.3 5.8 6.1 7.1 8.1 9.1 10.1 13.7 14.8 15.8 16.10 17.8 18.9 19.7 20.5 28.1 29.1 30.2 31.2 32.2 33.2 35.4 36.1 37.1 38.1 40.2
  SAY #7770 /* ~Тленный кивает головой и возвращается к пению.~ */
  IF ~~ THEN REPLY #7874 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 20.0
  SAY #7771 /* ~«Мы оплакиваем».~ */
  IF ~~ THEN REPLY #7875 /* ~«Кто умер?»~ */ GOTO 14
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7876 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7877 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7878 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7879 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7880 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7881 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 40
  IF ~~ THEN REPLY #7882 /* ~«Это все, что я хотел узнать. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #7772 /* ~«Мы оплакиваем не мертвых. Мы оплакиваем живых».~ */
  IF ~~ THEN REPLY #7883 /* ~«Живых?»~ */ GOTO 15
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7884 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7885 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7886 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7887 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7888 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7889 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 40
  IF ~~ THEN REPLY #7890 /* ~«Понятно... У меня еще вопросы...» ~ */ GOTO 20
  IF ~~ THEN REPLY #7891 /* ~«Думаю, я выслушал достаточно. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #7773 /* ~«Мы оплакиваем живых, испытывающих боль утраты».~ */
  IF ~~ THEN REPLY #7892 /* ~«Зачем?»~ */ GOTO 16
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7893 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7894 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7895 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7896 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7897 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7898 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 40
  IF ~~ THEN REPLY #7899 /* ~«Понятно... У меня еще вопросы...» ~ */ GOTO 20
  IF ~~ THEN REPLY #7900 /* ~«Думаю, я выслушал достаточно. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #7774 /* ~«Уход души к Истинной Смерти часто оставляет ощущение беспокойства. Когда уходит любимый, утрату часто сопровождают скорбь и чувство потери».~ */
  IF ~~ THEN REPLY #7901 /* ~«И это естественно...»~ */ GOTO 17
  IF ~~ THEN REPLY #7902 /* ~«Значит, вы оплакиваете живых, потому что...»~ */ GOTO 17
  IF ~~ THEN REPLY #7903 /* ~«Истинной Смерти?»~ */ GOTO 18
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7904 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7905 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7906 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7907 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7908 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7909 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 40
  IF ~~ THEN REPLY #7910 /* ~«Понятно... У меня еще вопросы...» ~ */ GOTO 20
  IF ~~ THEN REPLY #7911 /* ~«Думаю, я выслушал достаточно. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1 18.1
  SAY #7781 /* ~«Скорбь и чувство утраты — сильные эмоции. Подобные эмоции привязывают живущего к этому существованию, не позволяя ему достичь Истинной Смерти в тот момент, когда смерть приходит к нему. Мы оплакиваем живых, поглощенных подобными эмоциями».~ */
  IF ~~ THEN REPLY #7912 /* ~«Истинной Смерти?»~ */ GOTO 18
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7913 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7914 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7915 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7916 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7917 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7918 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 40
  IF ~~ THEN REPLY #7919 /* ~«Понятно... У меня еще вопросы...» ~ */ GOTO 20
  IF ~~ THEN REPLY #7920 /* ~«Думаю, я выслушал достаточно. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 18 // from: 16.2 17.0
  SAY #7782 /* ~«Иногда ее называют последней смертью. Истинная Смерть — это освобождение от серого, полного боли существования. Это освобождение от эмоций, от разума, от этих оболочек».~ */
  IF ~~ THEN REPLY #7921 /* ~«Похоже на забвение».~ */ GOTO 19
  IF ~~ THEN REPLY #7922 /* ~«Поэтому вы оплакиваете живых?»~ */ GOTO 17
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7923 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7924 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7925 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7926 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7927 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7928 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 40
  IF ~~ THEN REPLY #7929 /* ~«Понятно... У меня еще вопросы...» ~ */ GOTO 20
  IF ~~ THEN REPLY #7930 /* ~«Думаю, я выслушал достаточно. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #7783 /* ~Тленный кивает. «Некоторые это так и называют. Но это не совсем точно».~ */
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7931 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7932 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7933 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7934 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7935 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7936 /* ~«Кого именно вы оплакиваете?»~ */ GOTO 40
  IF ~~ THEN REPLY #7937 /* ~«Неважно. У меня есть другие вопросы...»~ */ GOTO 20
  IF ~~ THEN REPLY #7938 /* ~«Думаю, я выслушал достаточно. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 20 // from: 5.7 14.7 15.7 16.9 17.7 18.8 19.6 29.0 30.1 31.1 32.1 33.1 34.0 37.0 40.1
  SAY #7784 /* ~Тленный ждет.~ */
  IF ~~ THEN REPLY #7939 /* ~«Что ты делаешь?»~ */ GOTO 13
  IF ~  Global("Chant_Change","GLOBAL",1)
~ THEN REPLY #7940 /* ~«Почему ваши песнопения изменились?»~ */ GOTO 28
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #7941 /* ~«Я оплакиваю покойника».~ */ GOTO 5
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #7942 /* ~«У меня просьба от того, кто потерял другого».~ */ GOTO 35
  IF ~~ THEN REPLY #7943 /* ~«Я хотел бы послушать ваше пение».~ */ GOTO 11
  IF ~~ THEN REPLY #7944 /* ~«Извини за беспокойство. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 21 // from: 1.2 4.2 11.1 23.0
  SAY #7785 /* ~Все тленные поют в одном тоне и ритме. В отличие от пения, которое ты слышал, когда впервые подошел к мемориалу, этот напев повторяется словно волна, накатывающая на береговую линию. С этой мыслью в тебе пробуждается воспоминание...~ */
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #7945 /* ~Попробовать вспомнить...~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,500)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #7946 /* ~Попробовать вспомнить...~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,750)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #7947 /* ~Попробовать вспомнить...~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,1000)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",1)
~ THEN REPLY #7948 /* ~Попробовать вспомнить...~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 22
  IF ~~ THEN REPLY #7949 /* ~Стряхнуть воспоминание.~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1 21.2 21.3
  SAY #7786 /* ~Твое воспоминание смутно: ты стоишь на далеком берегу... где-то в другом месте, далеко отсюда. Рядом с тобой — женщина. Она стоит слева от тебя, как раз за пределами твоего периферийного зрения, поэтому ты не можешь ее различить. При попытке освежить воспоминание оно ускользает...~ */
  IF ~  Global("Shore_Memory","GLOBAL",0)
~ THEN REPLY #7950 /* ~Восстановить самообладание.~ */ DO ~SetGlobal("Shore_Memory","GLOBAL",1)
~ GOTO 23
  IF ~  GlobalGT("Shore_Memory","GLOBAL",0)
~ THEN REPLY #7951 /* ~Восстановить самообладание.~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 21.4 22.0 22.1
  SAY #7787 /* ~...и ты снова стоишь рядом с тленными-плакальщиками. Их пение теперь едва слышно. Они останавливаются, произносят несколько строк во славу «Истинной Смерти», затем снова начинают петь.~ */
  IF ~~ THEN REPLY #7952 /* ~Снова слушать.~ */ GOTO 21
  IF ~~ THEN REPLY #7953 /* ~Оставить их — пускай себе поют.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 1.3 4.3 11.2
  SAY #7788 /* ~Все тленные поют в одном тоне и ритме. В отличие от пения, которое ты слышал, когда впервые подошел к мемориалу, этот напев по тону намного выше, и напоминает свист летящей стрелы или ветер, гуляющий по каньону. Он начинается и заканчивается быстро: после того как тленные умолкают, они произносят несколько строк во славу «Истинной Смерти», а затем начинают петь снова.~ */
  IF ~~ THEN REPLY #7954 /* ~«У меня есть вопросы к тебе...»~ */ GOTO 3
  IF ~~ THEN REPLY #7955 /* ~Оставить их — пускай себе поют.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 1.4 4.4 11.3
  SAY #7789 /* ~Все тленные поют в одном тоне и ритме. В отличие от пения, которое ты слышал, когда впервые подошел к мемориалу, в этом напеве есть некая энергетика и случайность: он непредсказуем, и его высота меняется, едва он проходит через их губы. И сколько бы не менялся напев, все тленные попадают в такт. Как только песнопение, наконец, становится едва слышным, тленные произносят несколько строк во славу «Истинной Смерти», а затем начинают петь снова.~ */
  IF ~~ THEN REPLY #7956 /* ~«У меня есть вопросы к тебе...»~ */ GOTO 3
  IF ~~ THEN REPLY #7957 /* ~Оставить их — пускай себе поют.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 1.5 4.5 11.4
  SAY #7790 /* ~В отличие от пения, которое ты слышал, когда впервые подошел к мемориалу, этот напев состоит из одной единственной ноты, звучащей несколько минут... он напоминает тебе звон большого колокола. После этого тленные некоторое время молчат, затем произносят несколько строк во славу «Истинной Смерти» и продолжают петь.~ */
  IF ~~ THEN REPLY #7958 /* ~«У меня есть вопросы к тебе...»~ */ GOTO 3
  IF ~~ THEN REPLY #7959 /* ~Оставить их — пускай себе поют.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 1.6 4.6 11.5
  SAY #7791 /* ~В отличие от пения, которое ты слышал, когда впервые подошел к мемориалу, этот напев намного нежнее: иногда он звучит настолько тихо, что сливается с шумом улиц. Тленные на несколько минут полностью умолкают, потом произносят несколько строк во славу «Истинной Смерти» и продолжают петь.~ */
  IF ~~ THEN REPLY #7960 /* ~«У меня есть вопросы к тебе...»~ */ GOTO 3
  IF ~~ THEN REPLY #7961 /* ~Оставить их — пускай себе поют.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 20.1
  SAY #7792 /* ~Тленный изумленно смотрит на тебя. «Наше пение не поменялось. Мы продолжаем один и тот же напев с того момента, как начали петь».~ */
  IF ~~ THEN REPLY #7962 /* ~«Ваше пение изменилось... Я слышу отличия в тоне и ритме».~ */ GOTO 29
  IF ~~ THEN REPLY #7963 /* ~«Ладно, забудь».~ */ GOTO 12
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #7793 /* ~Тленный качает головой. «Возможно, это ты изменился».~ */
  IF ~~ THEN REPLY #7964 /* ~«У меня есть другие вопросы...»~ */ GOTO 20
  IF ~~ THEN REPLY #7965 /* ~«Может оно и так. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 30 // from: 13.1 14.1 15.1 16.3 17.1 18.2 19.0
  SAY #7794 /* ~«Я оплакиваю Яниса. Его ранила потеря его первой и единственной дочери Дейонарры».~ */
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #7966 /* ~«Дейонарры? Кажется, я слышал о ней. Тебе известно, как она умерла?»~ */ JOURNAL #27450 /* ~Тленные-плакальщики сказали, что они оплакивают мужчину по имени Янис, который является отцом того призрака, которого я встретил в Морге. Возможно, Янис может что-то знать об этой Дейонарре и обо мне...~ */ GOTO 37
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #7967 /* ~«У меня есть другие вопросы...»~ */ JOURNAL #27451 /* ~Тленные-плакальщики сказали, что они оплакивают мужчину по имени Янис, который потерял свою единственную дочь, Дейонарру. Почему-то эти имена кажутся мне знакомыми, но я не могу их вспомнить.~ */ GOTO 20
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #7968 /* ~«Спасибо. Это все, что я желал узнать».~ */ JOURNAL #27451 /* ~Тленные-плакальщики сказали, что они оплакивают мужчину по имени Янис, который потерял свою единственную дочь, Дейонарру. Почему-то эти имена кажутся мне знакомыми, но я не могу их вспомнить.~ */ GOTO 12
END

IF ~~ THEN BEGIN 31 // from: 13.2 13.5 14.2 14.5 15.2 15.5 16.4 16.7 17.2 17.5 18.3 18.6 19.1 19.4
  SAY #7795 /* ~«Мы оплакиваем твою скорбь по усопшим».~ */
  IF ~~ THEN REPLY #7969 /* ~«Я оправился. Кому-то из тех, кого вы оплакивали до меня, помощь нужна больше, чем мне».~ */ GOTO 34
  IF ~~ THEN REPLY #7970 /* ~«У меня есть другие вопросы...»~ */ GOTO 20
  IF ~~ THEN REPLY #7971 /* ~«Спасибо. Это все, что я желал узнать».~ */ GOTO 12
END

IF ~~ THEN BEGIN 32 // from: 13.3 14.3 15.3 16.5 17.3 18.4 19.2
  SAY #7796 /* ~«Мы оплакиваем жену Ангиара, которая скорбит по усопшему».~ */
  IF ~~ THEN REPLY #7972 /* ~«Она оправилась. Кому-то из тех, кого вы оплакивали до ее, помощь нужна больше, чем ей».~ */ GOTO 34
  IF ~~ THEN REPLY #7973 /* ~«У меня есть другие вопросы...»~ */ GOTO 20
  IF ~~ THEN REPLY #7974 /* ~«Спасибо. Это все, что я желал узнать».~ */ GOTO 12
END

IF ~~ THEN BEGIN 33 // from: 13.4 14.4 15.4 16.6 17.4 18.5 19.3
  SAY #7797 /* ~«Мы оплакиваем Адана, который скорбит по усопшему».~ */
  IF ~~ THEN REPLY #7975 /* ~«Э-э... Адан оправился. Кому-то из тех, кого вы оплакивали до его, помощь нужна больше, чем ему».~ */ GOTO 34
  IF ~~ THEN REPLY #7976 /* ~«У меня есть другие вопросы...»~ */ GOTO 20
  IF ~~ THEN REPLY #7977 /* ~«Спасибо. Это все, что я желал узнать».~ */ GOTO 12
END

IF ~~ THEN BEGIN 34 // from: 31.0 32.0 33.0 40.0
  SAY #7798 /* ~Тленный кивает и возвращается к пению.~ */
  IF ~~ THEN REPLY #7978 /* ~«У меня есть другие вопросы...»~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ GOTO 20
  IF ~~ THEN REPLY #7979 /* ~Слушать.~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ GOTO 2
  IF ~~ THEN REPLY #7980 /* ~Уйти.~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 3.2 20.3
  SAY #7799 /* ~Плакальщик внезапно останавливается и рассматривает тебя. «Скорбит ли тот, о ком ты говоришь, по усопшему?»~ */
  IF ~~ THEN REPLY #7981 /* ~«Нет. Это не вызывает у них никаких эмоций».~ */ GOTO 11
  IF ~  Global("Wife_of_Angyar","GLOBAL",2)
~ THEN REPLY #7982 /* ~«Да. Женщина, жена Ангиара, потеряла своего сына. Скорбь повисла на ней тяжелой ношей».~ */ GOTO 9
  IF ~~ THEN REPLY #7983 /* ~Ложь: «Э-э, да... мой друг, э-э... Адан... недавно потерял близкого человека. Он скорбит по умершему».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourn_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALAdahn_Mourn_1","GLOBALAdahn",4)
~ GOTO 10
  IF ~~ THEN REPLY #7984 /* ~«Да, последняя смерть принесла им много страданий и боли».~ */ GOTO 38
  IF ~~ THEN REPLY #7985 /* ~«Прошу прощения... Я ошибся. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 36 // from: 5.6
  SAY #7800 /* ~«Мы будем оплакивать твою боль, если таково твое желание».~ */
  IF ~~ THEN REPLY #7986 /* ~«Если это возможно — это бы сильно облегчило мою боль».~ */ DO ~SetGlobal("Chant","GLOBAL",6)
~ GOTO 11
  IF ~~ THEN REPLY #7987 /* ~«Нет, в этом нет нужды. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 37 // from: 30.0
  SAY #7801 /* ~«Подробности ее смерти мне неизвестны».~ */
  IF ~~ THEN REPLY #7988 /* ~«У меня есть другие вопросы...»~ */ GOTO 20
  IF ~~ THEN REPLY #7989 /* ~«Хорошо. Это все, что я желал знать».~ */ GOTO 12
END

IF ~~ THEN BEGIN 38 // from: 35.3
  SAY #7802 /* ~«Мы будем оплакивать их боль, если это не причинит им обиду».~ */
  IF ~~ THEN REPLY #7990 /* ~«Если это возможно — это бы сильно облегчило их боль».~ */ DO ~SetGlobal("Chant","GLOBAL",7)
~ GOTO 11
  IF ~~ THEN REPLY #7991 /* ~«Нет, в этом нет нужды. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 39 // from: 1.7 4.7 11.6
  SAY #7803 /* ~В отличие от пения, которое ты слышал, когда впервые подошел к мемориалу, различить этот напев намного сложнее. Слушая его, ты вдруг понимаешь, что звучит он как-то по-странному приглушенно, как будто сам воздух поглощает его. Песнопение тленных стихает спустя несколько минут. Они произносят несколько строк во славу «Истинной Смерти», затем продолжают петь.~ */
  IF ~~ THEN REPLY #7992 /* ~«У меня есть вопросы к тебе...»~ */ GOTO 3
  IF ~~ THEN REPLY #7993 /* ~Оставить их — пускай себе поют.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 13.6 14.6 15.6 16.8 17.6 18.7 19.5
  SAY #7804 /* ~«Мы оплакиваем упомянутого тобой, который скорбит по усопшему».~ */
  IF ~~ THEN REPLY #7994 /* ~«Он оправился. Кому-то из тех, кого вы оплакивали до его, помощь нужна больше, чем ему».~ */ GOTO 34
  IF ~~ THEN REPLY #7995 /* ~«У меня есть другие вопросы...»~ */ GOTO 20
  IF ~~ THEN REPLY #7996 /* ~«Спасибо. Это все, что я желал узнать».~ */ GOTO 12
END
