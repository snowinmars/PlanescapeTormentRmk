// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DOJO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DOJO~

IF ~  GlobalGT("CR_Vic","GLOBAL",3)
GlobalLT("CR_Vic","GLOBAL",6)
Global("Alley_Pregnant","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #18838 /* ~Это здоровяк теперь еще больше, его с головы до хвоста покрывает тонкий слой пятнистого коричневого меха. «Теперь Охо как человек в стене», — печально произносит он.~ */
  IF ~~ THEN REPLY #2830 /* ~«Что здесь произошло?»~ */ GOTO 1
  IF ~~ THEN REPLY #18839 /* ~«Куда все делись?»~ */ GOTO 2
  IF ~~ THEN REPLY #18840 /* ~«Теперь ты крысооборотень?»~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #18841 /* ~«Теперь ты лучше говоришь, Охо. Что случилось?»~ */ GOTO 5
  IF ~~ THEN REPLY #18842 /* ~«Тогда мне лучше убить тебя».~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18843 /* ~«Очень жаль. Прощай».~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2829 /* ~«Много волос. Зубы. Все друзья укусить. Некоторые стать еда. Некоторые стать волосатые. Они покинуть Охо».~ */
  IF ~~ THEN REPLY #18844 /* ~«Так куда же все делись?»~ */ GOTO 2
  IF ~~ THEN REPLY #18845 /* ~«Сюда вторглись крысы? Спасибо, Охо. Прощай».~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #18846 /* ~«Приходить крысы и волосатые люди. Всех перебить. Уходить в плачущее место. Охо остаться. Они вернуться. Они волосатые и злые».~ */
  IF ~~ THEN REPLY #18847 /* ~«Понятно. Есть ли что-нибудь еще, что я должен об этом знать?»~ */ GOTO 6
  IF ~~ THEN REPLY #18848 /* ~«Понятно. Спасибо, Охо. Прощай».~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.5 1.1 2.1 4.1 5.1
  SAY #18849 /* ~Обернувшись, ты замечаешь, что здоровяк присел, готовясь к прыжку. Его взгляд стал безумным, из его раскрытого рта тянется тонкая струйка слюны. Его зубы кажутся очень острыми.~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18850 /* ~«Не делай этого, Охо. Я не хочу причинить тебе вред».~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #18851 /* ~«Не делай этого, Охо. Я не хочу причинить тебе вред».~ */ GOTO 8
  IF ~~ THEN REPLY #18852 /* ~Атаковать его.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY #18853 /* ~Он печально смотрит на свои руки, потом на тебя. Его зубы поблескивают, когда он произносит: «Крыска». На его лице пляшет зловещая улыбка.~ */
  IF ~~ THEN REPLY #18854 /* ~«Есть ли что-нибудь еще, о чем я должен знать?»~ */ GOTO 6
  IF ~~ THEN REPLY #18855 /* ~«Что ж, очень жаль. Прощай, Охо».~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #18856 /* ~«Тогда мне лучше позаботится о том, чтобы ты больше никого не заразил. Готовься к смерти».~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3
  SAY #18857 /* ~Он пожимает плечами.~ */
  IF ~~ THEN REPLY #18858 /* ~«Есть ли что-нибудь еще, о чем я должен знать?»~ */ GOTO 6
  IF ~~ THEN REPLY #18859 /* ~«Тогда прощай». ~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 2.0 4.0 5.0
  SAY #18860 /* ~«Уходить. Крыски кусать. Теперь я кусать тебя».~ */
  IF ~~ THEN REPLY #18861 /* ~«Хорошо. Тогда прощай».~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.0
  SAY #18862 /* ~Он останавливается, его мышцы медленно расслабляются. «Уходить. Или кусать тебя».~ */
  IF ~~ THEN REPLY #18863 /* ~Уйти.~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #18864 /* ~Атаковать его.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #18865 /* ~Он игнорирует твои слова и накидывается на тебя!~ */
  IF ~~ THEN REPLY #18866 /* ~«Охо, стой!»~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18867 /* ~«Ну, раз уж на то пошло...»~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  Global("Ojo","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #18868 /* ~Здоровяк оборачивается к тебе, приседает и прыгает!~ */
  IF ~~ THEN REPLY #18869 /* ~«Охо, стой!»~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18870 /* ~«Ну, раз ты этого хочешь...»~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
NearbyDialog("DMorte")
~ THEN BEGIN 10 // from:
  SAY #18871 /* ~Охо отворачивается от стены и смотрит на тебя без выражения.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 197
END

IF ~~ THEN BEGIN 11 // from:
  SAY #18872 /* ~Охо отворачивается от стены и пялится на Морта. Его глаза затуманены.~ */
  IF ~~ THEN REPLY #18873 /* ~«Ладно, Морт, завязывай с этим».~ */ EXTERN ~DMORTE~ 198
  IF ~~ THEN REPLY #18874 /* ~«Охо, у меня есть несколько вопросов».~ */ GOTO 12
  IF ~~ THEN REPLY #18875 /* ~«Пора отсюда сваливать. Прощай, Охо».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 12 // from: 11.1 16.0 17.0 18.4 19.1 20.2 22.2 23.1 27.3 28.2 29.1 30.2 31.1 32.3 33.6 35.1 36.1 37.1 38.2 39.1 40.4 41.4 42.4 43.3
  SAY #18876 /* ~Охо продолжает пялиться.~ */
  IF ~  Global("Know_Ojo_Wall","GLOBAL",1)
~ THEN REPLY #18877 /* ~«Можешь рассказать мне еще раз о человеке в стене?»~ */ GOTO 27
  IF ~~ THEN REPLY #18878 /* ~«Расскажи мне о себе еще раз».~ */ GOTO 17
  IF ~~ THEN REPLY #18879 /* ~«Что ты делаешь?»~ */ GOTO 18
  IF ~~ THEN REPLY #18880 /* ~«Расскажи мне о жителях деревни».~ */ GOTO 33
  IF ~~ THEN REPLY #18881 /* ~«Расскажи мне о катакомбах».~ */ GOTO 21
  IF ~~ THEN REPLY #18882 /* ~«Расскажи мне о Погребенной деревне».~ */ GOTO 21
  IF ~~ THEN REPLY #18883 /* ~«Забудь. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 14.0 15.0 21.0
  SAY #18884 /* ~Он смотрит на тебя удивленно.~ */
  IF ~~ THEN REPLY #18885 /* ~Указать на него: «Кто ты?»~ */ GOTO 16
  IF ~~ THEN REPLY #18886 /* ~«Забудь об этом. У меня есть другие вопросы...»~ */ GOTO 15
  IF ~~ THEN REPLY #18887 /* ~«Забудь. Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 14 // from:
  SAY #18888 /* ~Ты видишь здорового детину с вялым подбородком. В его взгляде видна искра разума, едва ли большая, чем мимолетная вспышка.~ */
  IF ~~ THEN REPLY #18889 /* ~«Кто ты?»~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #18890 /* ~«Что ты делаешь?»~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #18891 /* ~«Расскажи мне о жителях деревни».~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #18892 /* ~«Расскажи мне о катакомбах».~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #18893 /* ~«Расскажи мне о Погребенной деревне».~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #18894 /* ~«Забудь. Прощай».~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #18895 /* ~Человек удивленно смотрит на тебя.~ */
  IF ~~ THEN REPLY #18896 /* ~«Расскажи мне о себе».~ */ GOTO 13
  IF ~~ THEN REPLY #18897 /* ~«Что ты делаешь?»~ */ GOTO 21
  IF ~~ THEN REPLY #18898 /* ~«Расскажи мне о жителях деревни».~ */ GOTO 21
  IF ~~ THEN REPLY #18899 /* ~«Расскажи мне о катакомбах».~ */ GOTO 21
  IF ~~ THEN REPLY #18900 /* ~«Расскажи мне о Погребенной деревне».~ */ GOTO 21
  IF ~~ THEN REPLY #18901 /* ~«Забудь. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.0
  SAY #18902 /* ~«Охо».~ */
  IF ~~ THEN REPLY #18903 /* ~«Хорошо, Охо. У меня к тебе пара вопросов...»~ */ GOTO 12
  IF ~~ THEN REPLY #18904 /* ~«Спасибо, Охо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.1
  SAY #18905 /* ~Он пожимает плечами.~ */
  IF ~~ THEN REPLY #18906 /* ~«Ладно... тогда ответь еще на пару вопросов».~ */ GOTO 12
  IF ~~ THEN REPLY #18907 /* ~«Ладно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.2
  SAY #18908 /* ~«Охо говорить...» Неожиданно он запинается и начинает массировать руку.~ */
  IF ~~ THEN REPLY #18909 /* ~Осмотреть его руку.~ */ GOTO 19
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18910 /* ~«О чем ты говоришь?»~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #18911 /* ~«О чем ты говоришь?»~ */ GOTO 24
  IF ~~ THEN REPLY #18912 /* ~«Что?»~ */ GOTO 22
  IF ~~ THEN REPLY #18913 /* ~«Ладно. У меня есть другие вопросы к тебе».~ */ GOTO 12
  IF ~~ THEN REPLY #18914 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #18915 /* ~На его коже есть маленькая воспаленная ранка. Он соскабливает с нее корку.~ */
  IF ~~ THEN REPLY #18916 /* ~«А что случилось с твоей рукой?»~ */ GOTO 20
  IF ~~ THEN REPLY #18917 /* ~«Охо, у меня к тебе еще несколько вопросов».~ */ GOTO 12
  IF ~~ THEN REPLY #18918 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #18919 /* ~«Укус».~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18920 /* ~«Кто тебя укусил, Охо?»~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #18921 /* ~«Кто тебя укусил, Охо?»~ */ GOTO 24
  IF ~~ THEN REPLY #18922 /* ~«Хорошо. У меня есть другие вопросы...»~ */ GOTO 12
  IF ~~ THEN REPLY #18923 /* ~«Прощай, Охо».~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.4 12.5 14.1 14.2 14.3 14.4 15.1 15.2 15.3 15.4
  SAY #18924 /* ~«Не говорить незнакомцы». Он отворачивается, почесывая руку.~ */
  IF ~~ THEN REPLY #18925 /* ~«Хорошо. Расскажи мне о себе».~ */ GOTO 13
  IF ~~ THEN REPLY #18926 /* ~«Ладно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.3
  SAY #18927 /* ~«Охо говорить». Он отворачивается от тебя.~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18928 /* ~«О чем ты говоришь?»~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #18929 /* ~«О чем ты говоришь?»~ */ GOTO 24
  IF ~~ THEN REPLY #18930 /* ~«Ладно. У меня есть другие вопросы к тебе».~ */ GOTO 12
  IF ~~ THEN REPLY #18931 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 18.1 20.0 22.0 40.0 41.1 42.1 43.0
  SAY #18932 /* ~Он глядит на стену, потом на тебя. «Человек в стене».~ */
  IF ~~ THEN REPLY #18933 /* ~«В стене есть человек?»~ */ DO ~SetGlobal("Know_Ojo_Wall","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY #18934 /* ~«Э, ладно. У меня есть другие вопросы...»~ */ GOTO 12
  IF ~~ THEN REPLY #18935 /* ~«Понятно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 18.2 20.1 22.1 40.1 41.2 42.2 43.1
  SAY #18936 /* ~Охо смотрит на одну из стен, потом поворачивается к тебе. Его глаза прищурены, кончик рта подергивается. «Ты кто? Ты уходить».~ */
  IF ~~ THEN REPLY #18937 /* ~«Охо, я просто хотел задать тебе еще пару вопросов».~ */ GOTO 25
  IF ~~ THEN REPLY #18938 /* ~«Ладно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #18939 /* ~«Нет! Ты уходить!» Он начинает волноваться.~ */
  IF ~~ THEN REPLY #18940 /* ~«Всего лишь несколько вопросов».~ */ GOTO 26
  IF ~~ THEN REPLY #18941 /* ~«Тогда ладно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #18942 /* ~Он ковыляет в угол и опускается на пол, отвернувшись от тебя. Как бы ты не упрашивал его, он не смотрит на тебя и не отвечает.~ */
  IF ~~ THEN REPLY #18943 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 12.0 23.0 28.1 29.0 30.1 31.0 32.2
  SAY #18944 /* ~Он смотрит на стену, затем на тебя.~ */
  IF ~~ THEN REPLY #18945 /* ~«Что говорит человек в стене?»~ */ GOTO 28
  IF ~~ THEN REPLY #18946 /* ~«Как выглядит человек в стене?»~ */ GOTO 30
  IF ~~ THEN REPLY #18947 /* ~«В какой он стене?»~ */ GOTO 32
  IF ~~ THEN REPLY #18948 /* ~«Ладно. У меня есть другие вопросы к тебе».~ */ GOTO 12
  IF ~~ THEN REPLY #18949 /* ~«Забудь. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #18950 /* ~«Говорить про место плачущих камней. Говорить истории. Я тоже говорить истории».~ */
  IF ~~ THEN REPLY #18951 /* ~«Истории о чем?»~ */ GOTO 29
  IF ~~ THEN REPLY #18952 /* ~«У меня еще вопросы насчет человека в стене...»~ */ GOTO 27
  IF ~~ THEN REPLY #18953 /* ~«У меня есть другие вопросы...»~ */ GOTO 12
  IF ~~ THEN REPLY #18954 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #18955 /* ~Он смотрит на стену и умолкает.~ */
  IF ~~ THEN REPLY #18956 /* ~«Ну, ладно. Расскажи мне еще раз о человеке в стене».~ */ GOTO 27
  IF ~~ THEN REPLY #18957 /* ~«У меня есть другие вопросы...»~ */ GOTO 12
  IF ~~ THEN REPLY #18958 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1
  SAY #18959 /* ~«Маленький. Красные глаза. Волосатый».~ */
  IF ~~ THEN REPLY #18960 /* ~«Кажется, это крыса».~ */ GOTO 31
  IF ~~ THEN REPLY #18961 /* ~«Ладно. У меня есть другие вопросы насчет человека в стене...»~ */ GOTO 27
  IF ~~ THEN REPLY #18962 /* ~«У меня есть другие вопросы...»~ */ GOTO 12
  IF ~~ THEN REPLY #18963 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0 32.1
  SAY #18964 /* ~Он кивает. ~ */
  IF ~~ THEN REPLY #18965 /* ~«Ладно. У меня есть другие вопросы насчет человека в стене...»~ */ GOTO 27
  IF ~~ THEN REPLY #18966 /* ~«У меня есть другие вопросы...»~ */ GOTO 12
  IF ~~ THEN REPLY #18967 /* ~«Спасибо, Охо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.2
  SAY #18968 /* ~Он указывает на стену. Ты замечаешь в ней маленькую дырку. Рассмотрев ее поближе, ты замечаешь, что у нее рваные края, как будто ее прогрызла крыса.~ */
  IF ~~ THEN REPLY #18969 /* ~«Кажется, ее прогрызла крыса».~ */ GOTO 31
  IF ~~ THEN REPLY #18970 /* ~«Человек в стене — крыса?»~ */ GOTO 31
  IF ~~ THEN REPLY #18971 /* ~«Ясно... Охо, у меня еще несколько вопросов насчет человека в стене...»~ */ GOTO 27
  IF ~~ THEN REPLY #18972 /* ~«У меня есть другие вопросы...»~ */ GOTO 12
  IF ~~ THEN REPLY #18973 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 12.3 35.0 36.0 37.0 38.1 39.0 40.3 41.3 42.3 43.2
  SAY #18974 /* ~«Кто?»~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #18975 /* ~«Анна».~ */ GOTO 34
  IF ~  !NearbyDialog("DAnnah")
GlobalGT("Annah","GLOBAL",0)
~ THEN REPLY #18976 /* ~«Анна».~ */ GOTO 35
  IF ~~ THEN REPLY #18977 /* ~«Марта».~ */ GOTO 36
  IF ~~ THEN REPLY #18978 /* ~«Фарод».~ */ GOTO 37
  IF ~~ THEN REPLY #18979 /* ~«Грис».~ */ GOTO 38
  IF ~~ THEN REPLY #18980 /* ~«Квинт».~ */ GOTO 39
  IF ~~ THEN REPLY #18981 /* ~«Ладно, у меня есть другие вопросы».~ */ GOTO 12
  IF ~~ THEN REPLY #18982 /* ~«Забудь. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #18983 /* ~Он боязно поглядывает на Анну.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 109
END

IF ~~ THEN BEGIN 35 // from: 33.1
  SAY #18984 /* ~«Злая девочка».~ */
  IF ~~ THEN REPLY #18985 /* ~«Ладно. Расскажи мне о кое-ком другом».~ */ GOTO 33
  IF ~~ THEN REPLY #18986 /* ~«Хорошо. У меня есть другие вопросы».~ */ GOTO 12
  IF ~~ THEN REPLY #18987 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 33.2
  SAY #18988 /* ~«Страшная ведьма».~ */
  IF ~~ THEN REPLY #18989 /* ~«Ладно. Расскажи мне о кое-ком другом».~ */ GOTO 33
  IF ~~ THEN REPLY #18990 /* ~«Хорошо. У меня есть другие вопросы».~ */ GOTO 12
  IF ~~ THEN REPLY #18991 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 33.3
  SAY #18992 /* ~«Странный».~ */
  IF ~~ THEN REPLY #18993 /* ~«Ладно. Расскажи мне о кое-ком другом».~ */ GOTO 33
  IF ~~ THEN REPLY #18994 /* ~«Хорошо. У меня есть другие вопросы».~ */ GOTO 12
  IF ~~ THEN REPLY #18995 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 33.4
  SAY #18996 /* ~Внезапно он прищуривается. «Мертвый».~ */
  IF ~~ THEN REPLY #18997 /* ~«Откуда ты знаешь, что он мертв?»~ */ GOTO 40
  IF ~~ THEN REPLY #18998 /* ~«Ладно. Расскажи мне о кое-ком другом».~ */ GOTO 33
  IF ~~ THEN REPLY #18999 /* ~«Хорошо. У меня есть другие вопросы».~ */ GOTO 12
  IF ~~ THEN REPLY #19000 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 33.5
  SAY #19001 /* ~«Куинт».~ */
  IF ~~ THEN REPLY #19002 /* ~«Ладно. Расскажи мне о кое-ком другом».~ */ GOTO 33
  IF ~~ THEN REPLY #19003 /* ~«Хорошо. У меня есть другие вопросы».~ */ GOTO 12
  IF ~~ THEN REPLY #19004 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.0
  SAY #19005 /* ~«Мне говорить человек в стене».~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #19006 /* ~«Расскажи мне о человеке в стене».~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #19007 /* ~«Расскажи мне о человеке в стене».~ */ GOTO 24
  IF ~~ THEN REPLY #19008 /* ~«Что он тебе сказал?»~ */ GOTO 41
  IF ~~ THEN REPLY #19009 /* ~«Расскажи мне об одном из жителей деревни».~ */ GOTO 33
  IF ~~ THEN REPLY #19010 /* ~«У меня есть другие вопросы...»~ */ GOTO 12
  IF ~~ THEN REPLY #19011 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.2
  SAY #19012 /* ~«Грис мертвый».~ */
  IF ~~ THEN REPLY #19013 /* ~«Где Грис?»~ */ GOTO 42
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #19014 /* ~«Расскажи мне о человеке в стене».~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #19015 /* ~«Расскажи мне о человеке в стене».~ */ GOTO 24
  IF ~~ THEN REPLY #19016 /* ~«Расскажи мне об одном из жителей деревни».~ */ GOTO 33
  IF ~~ THEN REPLY #19017 /* ~«У меня есть другие вопросы...»~ */ GOTO 12
  IF ~~ THEN REPLY #19038 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #19018 /* ~«В плачущем месте».~ */
  IF ~~ THEN REPLY #19019 /* ~«Ты имеешь в виду Катакомбы плачущих камней?»~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #19020 /* ~«Расскажи мне о человеке в стене».~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #19021 /* ~«Расскажи мне о человеке в стене».~ */ GOTO 24
  IF ~~ THEN REPLY #19022 /* ~«Расскажи мне об одном из жителей деревни».~ */ GOTO 33
  IF ~~ THEN REPLY #19023 /* ~«У меня есть другие вопросы...»~ */ GOTO 12
  IF ~~ THEN REPLY #19024 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #19025 /* ~Он кивает. ~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #19026 /* ~«Расскажи мне о человеке в стене».~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #19027 /* ~«Расскажи мне о человеке в стене».~ */ GOTO 24
  IF ~~ THEN REPLY #19028 /* ~«Расскажи мне об одном из жителей деревни».~ */ GOTO 33
  IF ~~ THEN REPLY #19029 /* ~«У меня есть другие вопросы...»~ */ GOTO 12
  IF ~~ THEN REPLY #19030 /* ~«Прощай».~ */ EXIT
END
