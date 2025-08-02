// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHIVERM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHIVERM~

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(5,1)
~ THEN BEGIN 0 // from:
  SAY #33152 /* ~Мужчина пятится назад со смешанным выражением страха и отвращения на лице. «От... отвали! Оставь меня в покое!»~ */
  IF ~~ THEN REPLY #33153 /* ~Позволить ему уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(5,1)
~ THEN BEGIN 1 // from:
  SAY #33154 /* ~При твоем приближении глаза мужчины расширяются, и он быстро отводит взгляд. «У меня нет ничего ценного, рубака, честно! Оставь человека в покое!»~ */
  IF ~~ THEN REPLY #33155 /* ~Позволить ему уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
NumTimesTalkedTo(0)
RandomNum(5,1)
~ THEN BEGIN 2 // from:
  SAY #33156 /* ~«Отвали! Я не желаю ничего иметь общего с тобой!»~ */
  IF ~~ THEN REPLY #33157 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(5,1)
~ THEN BEGIN 3 // from:
  SAY #33158 /* ~Мужчина с большим усилием пытается игнорировать тебя. Чем настойчивей ты пытаешься привлечь его внимание, тем очевидней становится то, что он не желает с тобой общаться.~ */
  IF ~~ THEN REPLY #33159 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(5,1)
~ THEN BEGIN 4 // from:
  SAY #33160 /* ~«Кажись, ты долго жил в Улье, или еще хуже — всю свою жизнь, рубака. Так что, бедолага, проваливай и оставь меня в покое!»~ */
  IF ~~ THEN REPLY #33161 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 5 // from:
  SAY #33162 /* ~«Ты выглядишь измотанным, пень. Если тебе нужно отдохнуть, подыщи себе берлогу в Ночлежке... она прямо посреди этого района. А теперь оставь меня. Я не собираюсь тратить попусту время на твои вопросы».~ */
  IF ~~ THEN REPLY #33163 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 6 // from:
  SAY #33164 /* ~«Ты еще не бывал в Баре собирателей пыли, пень? Просто ты мне напомнил тамошних рабочих...» Он громко хохочет.~ */
  IF ~~ THEN REPLY #33165 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 7 // from:
  SAY #33166 /* ~Мужчина жует нечто, напоминающее крысу на палочке. «Чего тебе, пень? Никогда раньше не видел приготовленную крысу? Тебе сойдет, и на вкус она тоже ничего! Если голоден, поговори с Креденом... он стоит у Офиса по контролю паразитов и эпидемий».~ */
  IF ~~ THEN REPLY #33167 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 8 // from:
  SAY #33168 /* ~«Еще не встречался с Голодными Псами? На твоем бы месте я бы с этими умалишенными не пересекался... кровавые отморозки, вот они кто!»~ */
  IF ~~ THEN REPLY #33169 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
NumTimesTalkedTo(0)
RandomNum(5,1)
~ THEN BEGIN 9 // from:
  SAY #33170 /* ~«Я ничего не знаю, пень... отвали».~ */
  IF ~~ THEN REPLY #33171 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(5,1)
~ THEN BEGIN 10 // from:
  SAY #33172 /* ~Мужчина осматривает тебя, затем проводит полукруг над своим сердцем. «Я не встреваю в твои дела, знаток, ты не встреваешь в моим. Прощай».~ */
  IF ~~ THEN REPLY #33173 /* ~Позволить ему уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(5,1)
~ THEN BEGIN 11 // from:
  SAY #33174 /* ~При твоем приближении мужчина начинает хмуриться. «У меня нет времени трясти черепушкой с какими-то проходимцами, рубака. И тем более это не самое безопасное занятие в Улье. Гуляй себе мимо».~ */
  IF ~~ THEN REPLY #33175 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
NumTimesTalkedTo(0)
CheckStatLT(Protagonist,13,CHR)
RandomNum(5,1)
~ THEN BEGIN 12 // from:
  SAY #33176 /* ~«Жизнь в Улье полна несправедливости, скажу я тебе».~ */
  IF ~~ THEN REPLY #33177 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(5,1)
CreatureInArea("AR0100")
~ THEN BEGIN 13 // from:
  SAY #33178 /* ~«Ты выглядишь измотанным, пень. Если тебе нужно отдохнуть, подыщи себе берлогу в Ночлежке... она прямо посреди этого района. А теперь оставь меня. Я не собираюсь тратить попусту время на твои вопросы».~ */
  IF ~~ THEN REPLY #33179 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(5,1)
CreatureInArea("AR0200")
~ THEN BEGIN 14 // from:
  SAY #33180 /* ~«Ты еще не бывал в Баре собирателей пыли, пень? Просто ты мне напомнил тамошних рабочих...» Он громко хохочет.~ */
  IF ~~ THEN REPLY #33181 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(5,1)
CreatureInArea("AR0300")
~ THEN BEGIN 15 // from:
  SAY #33182 /* ~Мужчина жует нечто, напоминающее крысу на палочке. «Чего тебе, пень? Никогда раньше не видел приготовленную крысу? Тебе сойдет, и на вкус она тоже ничего! Если голоден, поговори с Креденом... он стоит у Офиса по контролю паразитов и эпидемий».~ */
  IF ~~ THEN REPLY #339 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(5,1)
CreatureInArea("AR0400")
~ THEN BEGIN 16 // from:
  SAY #340 /* ~«Еще не встречался с Голодными Псами? На твоем бы месте я бы с этими умалишенными не пересекался... кровавые отморозки, вот они кто!»~ */
  IF ~~ THEN REPLY #341 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 17 // from:
  SAY #3921 /* ~«Я слышал о тебе, пень... ты — тот, кто спрашивает всех о Фароде, верно? Если ты еще не нашел его, попробуй поискать его на севере отсюда, на площади Старьевщиков».~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33184 /* ~«Значит, туда и направлюсь. Прощай».~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33188 /* ~«Я его уже нашел, но все равно спасибо. Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 18 // from:
  SAY #33192 /* ~«Слыхал о переулке Опасных углов? Раньше там был целый жилой квартал, но потом его сожгли дотла. Ничего не осталось, кроме кучи шныряющих бандитов».~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33193 /* ~«Да, я уже был там».~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33194 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 19 // from:
  SAY #33195 /* ~«Если ты сможешь перенести смрад, то где-то здесь должен быть старина Вонючка, который может рассказать много интересных историй».~ */
  IF ~  Global("Reekwind","GLOBAL",0)
~ THEN REPLY #33196 /* ~«Наверное, мне стоит поискать его. Прощай».~ */ EXIT
  IF ~  GlobalGT("Reekwind","GLOBAL",0)
~ THEN REPLY #33197 /* ~«Да, я уже виделся с ним. Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 20 // from:
  SAY #33198 /* ~«Тлеющий труп — моя самая любимая таверна в Улье... Иногда там бывает жарковато, хотя это, скорее всего, из-за тлеющего трупа».~ */
  IF ~  GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #33199 /* ~«Теперь там больше нет трупа. Прощай».~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #33200 /* ~«Ага, только я уже был там. Прощай».~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #33201 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
~ THEN BEGIN 21 // from:
  SAY #33202 /* ~Мужчина кивает тебе. «Приветствую, рубака. Я бы помог тебе, если смог... но я не знаю ничего для тебя полезного».~ */
  IF ~~ THEN REPLY #33203 /* ~«Все равно спасибо. Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
~ THEN BEGIN 22 // from:
  SAY #33205 /* ~«Ненавижу это место... хотел бы я иметь достаточно звенелок, чтобы убраться куда-нибудь из Улья. Мой тебе совет, рубака, вали отсюда, как только сможешь».~ */
  IF ~~ THEN REPLY #33206 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
~ THEN BEGIN 23 // from:
  SAY #33207 /* ~«Будь осторожен, пень... насилие — это образ жизни в Улье».~ */
  IF ~~ THEN REPLY #33208 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0100")
~ THEN BEGIN 24 // from:
  SAY #33209 /* ~«Ты выглядишь измотанным, пень. Если тебе нужно отдохнуть, подыщи себе берлогу в Ночлежке... она прямо посреди этого района. А теперь оставь меня. Я не собираюсь тратить попусту время на твои вопросы».~ */
  IF ~~ THEN REPLY #33210 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0100")
~ THEN BEGIN 25 // from:
  SAY #33211 /* ~«Я слышал о тебе, пень... ты — тот, кто спрашивает всех о Фароде, верно? Если ты еще не нашел его, попробуй поискать его на севере отсюда, на площади Старьевщиков».~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33212 /* ~«Значит, туда и направлюсь. Прощай».~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33213 /* ~«Я его уже нашел, но все равно спасибо. Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0100")
~ THEN BEGIN 26 // from:
  SAY #33214 /* ~«Однажды я встретил знатока, Порфирона... он может обучить любого сражаться».~ */
  IF ~  Global("Porphiron ","GLOBAL",0)
~ THEN REPLY #33215 /* ~«Возможно, я поищу его. Прощай».~ */ EXIT
  IF ~  GlobalGT("Porphiron ","GLOBAL",0)
~ THEN REPLY #33216 /* ~«Да, я уже виделся с ним. Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0200")
~ THEN BEGIN 27 // from:
  SAY #33217 /* ~«Если ищешь какое-нибудь направление, разыщи указатель. Он стоит у Бара собирателей пыли».~ */
  IF ~~ THEN REPLY #33218 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0200")
~ THEN BEGIN 28 // from:
  SAY #33219 /* ~«Слыхал о переулке Опасных углов? Раньше там был целый жилой квартал, но потом его сожгли дотла. Ничего не осталось, кроме кучи шныряющих бандитов».~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33220 /* ~«Да, я был там. Прощай».~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33221 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0200")
~ THEN BEGIN 29 // from:
  SAY #33222 /* ~«Много людей приходят сюда, чтобы оплакивать своих умерших... в Мемориале тленных есть странный тленный, который может сказать тебе, умер ли кто-то или нет. Или похоронить его имя, если ты захочешь увековечить его».~ */
  IF ~  Global("Death_of_Names","GLOBAL",1)
~ THEN REPLY #1252 /* ~«Да, его зовут «Смерть-Имен». Прощай».~ */ EXIT
  IF ~  Global("Death_of_Names","GLOBAL",0)
~ THEN REPLY #1254 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0200")
~ THEN BEGIN 30 // from:
  SAY #33223 /* ~«Практически каждый тленный в Сигиле проводит свое свободное время в Баре собирателей пыли. Если ты ищешь кого-нибудь из них, то лучше начинать поиски оттуда».~ */
  IF ~~ THEN REPLY #33225 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0300")
~ THEN BEGIN 31 // from:
  SAY #33228 /* ~Мужчина жует нечто, напоминающее крысу на палочке. «Чего тебе, пень? Никогда раньше не видел приготовленную крысу? Тебе сойдет, и на вкус она тоже ничего! Если голоден, поговори с Креденом... он стоит у Офиса по контролю паразитов и эпидемий».~ */
  IF ~~ THEN REPLY #33230 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0300")
~ THEN BEGIN 32 // from:
  SAY #33232 /* ~«Если ты сможешь перенести смрад, то где-то здесь должен быть старина Вонючка, который может рассказать много интересных историй».~ */
  IF ~  Global("Reekwind","GLOBAL",0)
~ THEN REPLY #33233 /* ~«Наверное, мне стоит поискать его. Прощай».~ */ EXIT
  IF ~  GlobalGT("Reekwind","GLOBAL",0)
~ THEN REPLY #33234 /* ~«Да, я уже виделся с ним. Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0300")
~ THEN BEGIN 33 // from:
  SAY #33235 /* ~«Все, что ты можешь пожелать, можно найти на здешнем Рынке».~ */
  IF ~~ THEN REPLY #33236 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0300")
~ THEN BEGIN 34 // from:
  SAY #33237 /* ~«Слыхал про Профиру на Рынке? Если она права, а не полоумная, как многие говорят, то в Сигиле наступит беспорядок».~ */
  IF ~~ THEN REPLY #33238 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0300")
~ THEN BEGIN 35 // from:
  SAY #33239 /* ~«Слыхал о переулке Опасных углов? Раньше там был целый жилой квартал, но потом его сожгли дотла. Ничего не осталось, кроме кучи шныряющих бандитов».~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33240 /* ~«Да, я уже был там».~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33241 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0400")
~ THEN BEGIN 36 // from:
  SAY #33242 /* ~«Еще не встречался с Голодными Псами? На твоем бы месте я бы с этими умалишенными не пересекался... кровавые отморозки, вот они кто!»~ */
  IF ~~ THEN REPLY #33243 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0400")
~ THEN BEGIN 37 // from:
  SAY #33244 /* ~«Тлеющий труп — моя самая любимая таверна в Улье... Иногда там бывает жарковато, хотя это, скорее всего, из-за тлеющего трупа».~ */
  IF ~  GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #33246 /* ~«Теперь там больше нет трупа. Прощай».~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #33247 /* ~«Ага, только я уже был там. Прощай».~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #33248 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0400")
~ THEN BEGIN 38 // from:
  SAY #33249 /* ~«Встречался с пустоголовым «Оплакивающим»? Вот ведь тупица... Как будто кому-то есть дело до этих деревьев. Хотел бы я знать, какой недоумок их вообще посадил здесь».~ */
  IF ~~ THEN REPLY #33250 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 39 // from:
  SAY #33251 /* ~«Могу лишь сказать тебе, рубака, чтобы ты получше следил за своим кошельком... Мне кажется, здесь очень много карманников».~ */
  IF ~~ THEN REPLY #33252 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 40 // from:
  SAY #33253 /* ~«Тут в окрестностях все время бегает одна тронутая... говорят, она невежда, которая слетела с катушек, пытаясь найти способ вернуться к себе домой».~ */
  IF ~  GlobalGT("Ingress","GLOBAL",5)
~ THEN REPLY #33254 /* ~«Да... Скорее всего, она уже дома или на полпути к нему. Прощай».~ */ EXIT
  IF ~  GlobalGT("Ingress","GLOBAL",0)
~ THEN REPLY #33255 /* ~«Я встречался с ней. Ее зовут Ингресс. Прощай».~ */ EXIT
  IF ~  Global("Ingress","GLOBAL",0)
~ THEN REPLY #33256 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 41 // from:
  SAY #33257 /* ~«Если у тебя есть время и немного звенелок в кармане, найди Гаоху на Рынке».~ */
  IF ~~ THEN REPLY #33258 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 42 // from:
  SAY #33259 /* ~«Какие у тебя интересные татуировки тут, рубака. Знаешь, здесь рядом есть салон... которым заправляет дабус, который разбирается в них!»~ */
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #33260 /* ~«Я знаю. Его зовут Фелл. Прощай».~ */ EXIT
  IF ~  Global("AR0404_Visited","GLOBAL",1)
~ THEN REPLY #33261 /* ~«Да, я был там. Прощай».~ */ EXIT
  IF ~  Global("AR0404_Visited","GLOBAL",0)
~ THEN REPLY #33262 /* ~«Тогда, может быть, я схожу туда. Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(20,1)
Global("Hive_OT_A","GLOBAL",0)
~ THEN BEGIN 43 // from:
  SAY #33263 /* ~«Тлиум! Я думал, что мы больше не увидимся. Как давно это было? Четыре года? Ну и вид у тебя... ладно, проехали. Вот та сотня медяков, которую я должен тебе. Я бы вернул тебе их раньше, но ты как будто испарился из Сигила! А теперь пора прощаться, Тлиум... удачи!»~ */
  IF ~~ THEN REPLY #33264 /* ~«Э...»~ */ DO ~SetGlobal("Hive_OT_A","GLOBAL",1)
GiveGoldForce(100)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33265 /* ~Позволить ему уйти.~ */ DO ~SetGlobal("Hive_OT_A","GLOBAL",1)
GiveGoldForce(100)
EscapeArea()
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(20,1)
Global("Hive_OT_B","GLOBAL",0)
~ THEN BEGIN 44 // from:
  SAY #33266 /* ~Глаза мужчины широко раскрыты, лицо налилось кровью. «С-с-силы небес и преисподней... говорили, что ты вернешься, н-н-но я не верил!» Он срывается с места.~ */
  IF ~~ THEN REPLY #33267 /* ~Попробовать схватить его.~ */ DO ~Enemy()
EscapeArea()
SetGlobal("Hive_OT_B","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #33268 /* ~Позволить ему уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(20,1)
Global("Hive_OT_C","GLOBAL",0)
~ THEN BEGIN 45 // from:
  SAY #33269 /* ~Мужчина косится на тебя. «Моррик? Ты ли это?»~ */
  IF ~~ THEN REPLY #33270 /* ~Ложь: «Да... Я — Моррик».~ */ GOTO 47
  IF ~~ THEN REPLY #33271 /* ~«Может быть...»~ */ GOTO 47
  IF ~~ THEN REPLY #33272 /* ~«Извини, нет».~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.2
  SAY #33273 /* ~«Тогда прошу прощения, рубака. Прощай».~ */
  IF ~~ THEN REPLY #33274 /* ~«Прощай».~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.0 45.1
  SAY #33275 /* ~«Разве я тебе не говорил тебе не возвращаться в Сигил?.. Если Аматэль узнает, что ты вернулся, то ты — покойник! Как бы то ни было, твой свиток все еще у меня. Вот... возьми и уйди от меня, пока нас не увидели вместе».~ */
  IF ~~ THEN REPLY #33276 /* ~«Но...»~ */ DO ~GiveItemCreate("SPWI107",Protagonist,0,0,0)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33277 /* ~«Спасибо... Прощай».~ */ DO ~GiveItemCreate("SPWI107",Protagonist,0,0,0)
EscapeArea()
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(20,1)
Global("Hive_OT_Morte","GLOBAL",0)
InParty("Morte")
~ THEN BEGIN 48 // from:
  SAY #33278 /* ~Мужчина разевает рот от удивления и показывает на Морта. «Ух ты, гляди! Летающий череп!»~ */
  IF ~~ THEN EXTERN ~DMORTE~ 321
END

IF ~~ THEN BEGIN 49 // from:
  SAY #33279 /* ~«Чееего?! Нарываешься на то, чтобы тебе выбили пару зубов, болтающаяся черепушка?» Мужчина угрожающе делает шаг в сторону Морта.~ */
  IF ~~ THEN REPLY #33280 /* ~Остановить мужчину.~ */ GOTO 50
  IF ~~ THEN REPLY #33281 /* ~Позволить Морту расправиться с ним.~ */ EXTERN ~DMORTE~ 322
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #33282 /* ~Ты становишься между Мортом и мужчиной; он хмуро смотрит на тебя, но затем отступает. «Только время на тебя тратить!» Он разворачивается и уходит прочь.~ */
  IF ~~ THEN REPLY #33283 /* ~Позволить ему уйти.~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #33284 /* ~Мужчина хмуро смотрит на Морта, потом на тебя, затем мотает головой. «Только время на вас тратить!» Он поворачивается и уходит прочь.~ */
  IF ~~ THEN REPLY #33285 /* ~Позволить ему уйти.~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(20,1)
Global("Hive_OT_Annah","GLOBAL",0)
InParty("Annah")
~ THEN BEGIN 52 // from:
  SAY #33286 /* ~«Анна! Что это ты делаешь с *этой* вонючей кучей навоза? Я думал, ты — *моя* девушка...» Мужчина громко гогочет, хлопая себя по бедрам.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 180
END

IF ~~ THEN BEGIN 53 // from:
  SAY #33287 /* ~«А, это все пустые слова, Анна... все *слова*... тебе никогда не найти мужчину, который *по-настоящему* удовлетворит тебя! Иди сюда, подари мне долгий смачный поцелуй, моя маленькая грязная принцесса тифлингов!» Он пытается ущипнуть Анну.~ */
  IF ~~ THEN DO ~Enemy()
Attack("Annah")
~ EXTERN ~DANNAH~ 181
END

IF ~  NumTimesTalkedToGT(0)
RandomNum(3,1)
~ THEN BEGIN 54 // from:
  SAY #33288 /* ~Этому человеку больше нечего тебе рассказать.~ */
  IF ~~ THEN REPLY #33289 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
RandomNum(3,1)
~ THEN BEGIN 55 // from:
  SAY #33290 /* ~Этот человек не сообщит тебе больше ничего важного.~ */
  IF ~~ THEN REPLY #33291 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
RandomNum(3,1)
~ THEN BEGIN 56 // from:
  SAY #33292 /* ~Этот человек не сообщит тебе больше ничего интересного.~ */
  IF ~~ THEN REPLY #33293 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 57 // from:
  SAY #33294 /* ~Этому человеку больше нечего тебе сказать.~ */
  IF ~~ THEN REPLY #33295 /* ~Уйти.~ */ EXIT
END
