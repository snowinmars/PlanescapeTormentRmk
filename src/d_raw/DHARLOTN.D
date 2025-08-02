// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHARLOTN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DHARLOTN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1809 /* ~Перед тобой уставшая женщина, одетая в тесный кожаный корсаж и гетры. Аромат дешевых духов буквально обволакивает ее, а лицо скрыто за маской грубого макияжа. Завидев тебя, она улыбается. «Почему бы тебе не остановиться и не поболтать со мной, красавчик?»~ */
  IF ~~ THEN REPLY #7190 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #7191 /* ~Пройти мимо.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1810 /* ~Женщина жеманно поглядывает на тебя. «А теперь ты похож на знатока, который что-то *потерял*. Может, помочь тебе поискать, рубака?» Она слегка улыбается.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #7192 /* ~«А?»~ */ EXTERN ~DMORTE~ 37
  IF ~  Global("Journal","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7193 /* ~«Я потерял дневник».~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #7194 /* ~«Может, ты мне поможешь найти то, что я потерял».~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #7195 /* ~«Вообще-то, у меня несколько вопросов...»~ */ GOTO 9
  IF ~~ THEN REPLY #7196 /* ~«Не сегодня, спасибо».~ */ GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #1812 /* ~«Э? — она явно этого не ожидала. — О чем это ты?»~ */
  IF ~~ THEN REPLY #7197 /* ~«Забудь про дневник. Может, ты поможешь найти то, чего мне *на самом* деле не хватает».~ */ GOTO 3
  IF ~~ THEN REPLY #7198 /* ~«Я ничего не терял, но у меня есть пара вопросов...»~ */ GOTO 9
  IF ~~ THEN REPLY #7199 /* ~«Неважно. Прощай».~ */ GOTO 11
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.0
  SAY #1813 /* ~Ее тон становится деловым. «Ага, красавчик, теперь вопрос только в щедрости страждущего».~ */
  IF ~~ THEN REPLY #7200 /* ~«Понятно. Сколько?»~ */ GOTO 4
  IF ~~ THEN REPLY #7201 /* ~«Забудь об этом. У меня есть несколько вопросов...»~ */ GOTO 9
  IF ~~ THEN REPLY #7202 /* ~«Неважно. Прощай».~ */ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #1814 /* ~«Пара медяков, чтобы *поглядеть*, чего там у тебя пропало, и десять, чтобы найти твою пропажу».~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #7203 /* ~«Готово».~ */ DO ~TakePartyGold(10)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #7204 /* ~«Забудь об этом. Лучше ответь на несколько вопросов...»~ */ GOTO 9
  IF ~  PartyGoldGT(9)
!NearbyDialog("DMorte")
~ THEN REPLY #7205 /* ~«Неважно. Я сам найду то, что ищу, спасибо».~ */ GOTO 11
  IF ~  PartyGoldLT(10)
~ THEN REPLY #7206 /* ~«Неважно. Я сам найду то, что ищу, спасибо».~ */ GOTO 6
  IF ~  PartyGoldGT(9)
NearbyDialog("DMorte")
Global("Morte_Harlot_Quip_1","GLOBAL",0)
~ THEN REPLY #7207 /* ~«Неважно. Я сам найду то, что ищу, спасибо».~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",1)
~ EXTERN ~DMORTE~ 38
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #1815 /* ~«Кажется, ты уже нашел, что искал. Пойдем, красавчик».~ */
  IF ~  InParty("Annah")
NearbyDialog("DAnnah")
~ THEN REPLY #7208 /* ~Идти за ней...~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Harlot_Annah_Sex","GLOBAL",1)
~ EXTERN ~DANNAH~ 49
  IF ~  !InParty("Annah")
!NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN REPLY #7211 /* ~Идти за ней...~ */ DO ~MoraleDec("Grace",1)
SetGlobal("Harlot_Grace_Sex","GLOBAL",1)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ EXTERN ~DGRACE~ 6
  IF ~  !InParty("Annah")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7212 /* ~Идти за ней...~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ GOTO 32
  IF ~  !InParty("Annah")
NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7208 /* ~Идти за ней...~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ GOTO 32
  IF ~  InParty("Annah")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7208 /* ~Идти за ней...~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ GOTO 32
END

IF ~~ THEN BEGIN 6 // from: 4.3
  SAY #1816 /* ~Женщина улыбается. «Что, звенелок не хватает? Не переживай, красавчик... возвращайся, когда кошелек будет потолще».~ */
  IF ~~ THEN REPLY #7213 /* ~«Э-э... Тогда прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #1817 /* ~Женщина встревает в разговор. «Для твоего мимира... или еще какого дегенерата — двойная такса».~ */
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #7214 /* ~«Э-э... 'мимира'?»~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ EXTERN ~DMORTE~ 129
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #7215 /* ~«Не парься насчет этого, Морт. Судя по ее виду, я скорее спасаю тебя от второй смерти».~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 8
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #7217 /* ~«Тогда неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #1823 /* ~«Чтоб тебе сифилис кишки изъел! От тебя несет, как от пастуха, да и одеваешься ты не лучше, а уж рожа — и того хуже, раза в два!»~ */
  IF ~~ THEN REPLY #7218 /* ~«Э-э...»~ */ EXTERN ~DMORTE~ 130
END

IF ~~ THEN BEGIN 9 // from: 1.3 2.1 3.1 4.1 32.0
  SAY #1824 /* ~Женщина хмурится. «Я тебе не осведомитель... — она хмурится, затем потирает двумя пальцами друг о друга. — *Если* только у тебя нет пары звенелок, чтобы оплатить мое время».~ */
  IF ~  CheckStatLT(Protagonist,10,CHR)
~ THEN REPLY #7219 /* ~«Я могу заплатить. Сколько?»~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,CHR)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #7223 /* ~«Я могу заплатить. Сколько?»~ */ GOTO 33
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #7224 /* ~«Я могу заплатить. Сколько?»~ */ GOTO 34
  IF ~~ THEN REPLY #7225 /* ~«Тогда неважно. Прощай».~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #1825 /* ~«Десять медяков. Дальнейшие расспросы увеличат гонорар».~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #7226 /* ~«Справедливо. Вот десять монет».~ */ DO ~TakePartyGold(10)
~ GOTO 12
  IF ~~ THEN REPLY #7227 /* ~«Неважно».~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 1.4 2.2 3.2 4.2 9.3 10.1 13.7 33.1 34.1
  SAY #1826 /* ~«Многое теряешь. Если надоест терять и захочется найти — приходи ко мне, красавчик, поболтаем».~ */
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7228 /* ~«Я запомню это. Прощай».~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7229 /* ~«Я запомню это. Прощай».~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7230 /* ~«Я запомню это. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 33.0 34.0
  SAY #1827 /* ~«Ага». Она зажимает монеты в ладони, в которой они незамедлительно исчезают. «Итак...»~ */
  IF ~~ THEN REPLY #7231 /* ~«Я хотел бы кое о чем узнать...»~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0 14.2 15.1 16.1 17.0 19.1 20.1 21.1 22.0 23.0 24.3 24.4 24.5 24.6 25.2 26.2 27.1 28.1 29.1 30.0 31.0
  SAY #1828 /* ~«Спрашивай, красавчик».~ */
  IF ~  Global("Know_Sigil","GLOBAL",0)
~ THEN REPLY #7232 /* ~«Можешь рассказать об этом городе?»~ */ GOTO 14
  IF ~  Global("Know_Sigil","GLOBAL",1)
~ THEN REPLY #7233 /* ~«Можешь рассказать о Сигиле?»~ */ GOTO 14
  IF ~~ THEN REPLY #7236 /* ~«Можешь рассказать о здешних интересных местах?»~ */ GOTO 18
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #7237 /* ~«Можешь рассказать мне о фракциях?»~ */ GOTO 21
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #7238 /* ~«Ты можешь рассказать о Леди Боли?»~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #7239 /* ~«Я ищу кое-кого по имени Фарод».~ */ GOTO 24
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #7240 /* ~«Я ищу дневник».~ */ GOTO 23
  IF ~~ THEN REPLY #7241 /* ~«На самом деле, ничего. Прощай».~ */ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1
  SAY #1829 /* ~Ее глаза подозрительно сужаются. «О городе? А что?»~ */
  IF ~  Global("Know_Sigil","GLOBAL",0)
~ THEN REPLY #7242 /* ~«Что такое?»~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 15
  IF ~  GlobalGT("Know_Sigil","GLOBAL",0)
~ THEN REPLY #7243 /* ~«Что такое?»~ */ GOTO 15
  IF ~~ THEN REPLY #7244 /* ~«Вообще-то, у меня есть другие вопросы...»~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7245 /* ~«Неважно. Прощай».~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7246 /* ~«Неважно. Прощай».~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7247 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1
  SAY #1830 /* ~«Погоди, ты про Сигил? — озираясь, она пожимает плечами. — Этот город лежит под твоими ногами и окружает тебя со всех сторон, — она улыбается. — От этого у гостей желудок ходит ходуном».~ */
  IF ~~ THEN REPLY #7248 /* ~«А где точнее находится Сигил?»~ */ GOTO 16
  IF ~~ THEN REPLY #7249 /* ~«Вообще-то, у меня есть другие вопросы...»~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7250 /* ~«Неважно. Прощай».~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7251 /* ~«Неважно. Прощай».~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7252 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #1831 /* ~«В центре планов, как говорят, — она фыркает. — Если ты веришь в эту белиберду».~ */
  IF ~~ THEN REPLY #7253 /* ~«А почему это 'белиберда'?»~ */ GOTO 17
  IF ~~ THEN REPLY #7254 /* ~«Вообще-то, у меня есть другие вопросы...»~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7255 /* ~«Неважно. Прощай».~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7256 /* ~«Неважно. Прощай».~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7257 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #1832 /* ~Она ухмыляется. «Ну, красавчик, если верить седобородым, ученым, законникам и всем остальным сотрясателям черепушек, то они говорят, что планы существуют вечно, — она стучит себя по лбу. — А кто скажет, где их 'центр'?»~ */
  IF ~~ THEN REPLY #7258 /* ~«Хм-м. У меня есть другие вопросы...»~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7259 /* ~«Спасибо за информацию. Прощай».~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7260 /* ~«Спасибо за информацию. Прощай».~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7261 /* ~«Спасибо за информацию. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.2 19.0 20.0
  SAY #1833 /* ~Она кладет руки на пояс и выпячивает губы. «Смотря что тебя интересует, рубака».~ */
  IF ~~ THEN REPLY #7379 /* ~«Я ищу развлечений».~ */ GOTO 19
  IF ~~ THEN REPLY #7381 /* ~«Я ищу работу».~ */ GOTO 20
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7385 /* ~«Неважно. Прощай».~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7389 /* ~«Неважно. Прощай».~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7393 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #1834 /* ~«Я уже сделала тебе предложение, красавчик, и цена была не такая уж грабительская. Не знаю, где еще ты сможешь получить такое удовольствие, как со мной».~ */
  IF ~~ THEN REPLY #7263 /* ~«Что еще интересного есть в округе?»~ */ GOTO 18
  IF ~~ THEN REPLY #7264 /* ~«Отлично... У меня есть другие вопросы...»~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7265 /* ~«Неважно. Прощай».~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7266 /* ~«Неважно. Прощай».~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7267 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #1835 /* ~Она хохочет. «Ты это у *меня* спрашиваешь? Ты что, решил записаться в нашу общину?» Она складывается пополам от хохота... смех точь-в-точь как у подвыпившей гарпии. Вдоволь нахохотавшись, она делает глубокий вздох. «Да ты... ты просто хохмач».~ */
  IF ~~ THEN REPLY #7269 /* ~«Что еще интересного есть в округе?»~ */ GOTO 18
  IF ~~ THEN REPLY #7270 /* ~«Отлично... У меня есть другие вопросы...»~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7272 /* ~«Неважно. Прощай».~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7273 /* ~«Неважно. Прощай».~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7274 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.3
  SAY #1837 /* ~Она многозначительно улыбается. «Я просто... 'обслуживаю'... фракции, красавчик. Я с ними дел не имею».~ */
  IF ~~ THEN REPLY #7275 /* ~«И даже тленных?»~ */ GOTO 22
  IF ~~ THEN REPLY #7276 /* ~«Отлично... У меня есть другие вопросы...»~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7277 /* ~«Неважно. Прощай».~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7278 /* ~«Неважно. Прощай».~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7279 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #1838 /* ~«В моих объятиях тленные перестают быть тленными, красавчик, — она усмехается. — Эти вояки только и трещат, что о смерти, а вот со мной они про нее не сильно трепаются, сечешь?» ~ */
  IF ~~ THEN REPLY #7280 /* ~«Понятно... У меня есть другие вопросы...» ~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7281 /* ~«Очень доходчиво... Прощай».~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7282 /* ~«Очень доходчиво... Прощай».~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7283 /* ~«Очень доходчиво... Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 13.6
  SAY #1839 /* ~«Без понятия, где можно его найти, красавчик. Он может быть... где угодно, — она с намеком улыбается. — Но зато я знаю, где можно начать поиски».~ */
  IF ~~ THEN REPLY #7284 /* ~«У меня есть другие вопросы...»~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7285 /* ~«Неважно. Прощай».~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7286 /* ~«Неважно. Прощай».~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7287 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 13.5
  SAY #1840 /* ~«Фарод? Это одна из *величайших* тайн, красавчик. Если хочешь разузнать об этом знатоке больше, то придется заплатить тройную таксу».~ */
  IF ~  CheckStatLT(Protagonist,10,CHR)
PartyGoldGT(29)
~ THEN REPLY #7318 /* ~«Хорошо. Вот тридцать монет».~ */ DO ~TakePartyGold(30)
~ GOTO 25
  IF ~  CheckStatGT(Protagonist,9,CHR)
CheckStatLT(Protagonist,13,CHR)
PartyGoldGT(20)
~ THEN REPLY #7319 /* ~«Хорошо. Вот двадцать одна монета».~ */ DO ~TakePartyGold(21)
~ GOTO 25
  IF ~  CheckStatGT(Protagonist,12,CHR)
PartyGoldGT(8)
~ THEN REPLY #7320 /* ~«Хорошо. Вот девять монет».~ */ DO ~TakePartyGold(9)
~ GOTO 25
  IF ~  CheckStatLT(Protagonist,10,CHR)
PartyGoldLT(30)
~ THEN REPLY #7321 /* ~«Хм-м... Мне не хватает. Но у меня еще были вопросы...»~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,9,CHR)
CheckStatLT(Protagonist,13,CHR)
PartyGoldLT(21)
~ THEN REPLY #7322 /* ~«Хм-м... Мне не хватает. Но у меня еще были вопросы...»~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,CHR)
PartyGoldLT(9)
~ THEN REPLY #7323 /* ~«Хм-м... Мне не хватает. Но у меня еще были вопросы...»~ */ GOTO 13
  IF ~~ THEN REPLY #7324 /* ~«Тогда забудем об этом... У меня есть еще вопросы...»~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7325 /* ~«Неважно. Прощай».~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7326 /* ~«Неважно. Прощай».~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7327 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1 24.2
  SAY #1841 /* ~Она сгребает твои монеты и кладет их в карман. «Что ты хочешь узнать о старом Фароде?»~ */
  IF ~~ THEN REPLY #7328 /* ~«За *такую* цену я хочу знать о нем все, что тебе известно».~ */ GOTO 26
  IF ~~ THEN REPLY #7329 /* ~«Что ты можешь о нем рассказать?»~ */ GOTO 26
  IF ~~ THEN REPLY #7330 /* ~«Тогда забудем об этом... У меня есть еще вопросы...»~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7331 /* ~«Неважно. Прощай».~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7332 /* ~«Неважно. Прощай».~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7333 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 25.1
  SAY #1842 /* ~Она пожимает плечами. «Говорят, что он главарь сборщиков. В его тени полно знатоков».~ */
  IF ~  Global("Harlot_Reveals_Pharod","GLOBAL",0)
~ THEN REPLY #7334 /* ~«Где я могу его найти?»~ */ DO ~SetGlobal("Harlot_Reveals_Pharod","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 27
  IF ~  Global("Harlot_Reveals_Pharod","GLOBAL",1)
~ THEN REPLY #7335 /* ~«Где я могу его найти?»~ */ GOTO 27
  IF ~~ THEN REPLY #7336 /* ~«Забудь о Фароде... У меня есть другие вопросы...»~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7337 /* ~«Неважно. Прощай».~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7338 /* ~«Неважно. Прощай».~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7339 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #1843 /* ~«Ну, никто точно не уверен, но если бы *меня* спросили, то я начала бы с площади Старьевщиков».~ */
  IF ~~ THEN REPLY #7340 /* ~«Площади Старьевщиков?»~ */ GOTO 28
  IF ~~ THEN REPLY #7341 /* ~«Понятно... У меня есть другие вопросы...» ~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7342 /* ~«Спасибо за информацию. Прощай».~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7343 /* ~«Спасибо за информацию. Прощай».~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7344 /* ~«Спасибо за информацию. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #1848 /* ~«Ага, большая куча тряпья и мусора через три квартала к западу от Морга... У всех сборщиков там есть угол. По всей вероятности, и у Фарода там берлога».~ */
  IF ~~ THEN REPLY #7345 /* ~«Кто такие сборщики?»~ */ GOTO 29
  IF ~~ THEN REPLY #7346 /* ~«Понятно... У меня есть другие вопросы...» ~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7347 /* ~«Спасибо за информацию. Прощай».~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7348 /* ~«Спасибо за информацию. Прощай».~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7349 /* ~«Спасибо за информацию. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #1849 /* ~«Ну, знаешь... эти бедолаги за деньги собирают жмуриков. Незавидная судьба».~ */
  IF ~~ THEN REPLY #7262 /* ~«Собирают тела? Зачем?»~ */ GOTO 30
  IF ~~ THEN REPLY #7395 /* ~«Понятно... У меня есть другие вопросы...» ~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7396 /* ~«Спасибо за информацию. Прощай».~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7397 /* ~«Спасибо за информацию. Прощай».~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7398 /* ~«Спасибо за информацию. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #1850 /* ~«Затем, что они не додумались до того, что делаю я».~ */
  IF ~~ THEN REPLY #7399 /* ~«Понятно... У меня есть другие вопросы...» ~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7400 /* ~«Спасибо за информацию. Прощай».~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7401 /* ~«Спасибо за информацию. Прощай».~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7402 /* ~«Спасибо за информацию. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 13.4
  SAY #1851 /* ~Она сплевывает и делает полукруг над сердцем. «Это ведьма с клинками! Высокая и могучая, хозяйка всего в этом городе, парит в тишине и убивает любого, кто окажется в ее тени. Она оберегает город... — она переходит на шепот. — И оставляет живых *гнить* здесь».~ */
  IF ~~ THEN REPLY #7457 /* ~«Отлично... У меня есть другие вопросы...»~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7458 /* ~«Неважно. Прощай».~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7459 /* ~«Неважно. Прощай».~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7460 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 5.2 5.3 5.4
  SAY #1852 /* ~«Ну вот и все, рубака».~ */
  IF ~~ THEN REPLY #7461 /* ~«У меня есть вопросы к тебе. То есть... дай только собраться».~ */ GOTO 9
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7462 /* ~«Спасибо. Прощай».~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7463 /* ~«Спасибо. Прощай».~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7464 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 9.1
  SAY #1853 /* ~«Для тебя... — она критически осматривает тебя. — Семь медяков, ни больше, ни меньше. Дальнейшие расспросы увеличат гонорар».~ */
  IF ~  PartyGoldGT(6)
~ THEN REPLY #7465 /* ~«Справедливо. Вот семь монет».~ */ DO ~TakePartyGold(7)
~ GOTO 12
  IF ~~ THEN REPLY #7466 /* ~«Неважно».~ */ GOTO 11
END

IF ~~ THEN BEGIN 34 // from: 9.2
  SAY #1854 /* ~«Для такого обаяшки как ты...» Она одаривает тебя широкой улыбкой, раскрывая ряд грязных зубов. «Трех монет будет достаточно, чтобы развязать мне язык, — она облизывает губы, затем хмурится. — Но дальнейшие расспросы увеличат гонорар».~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #7467 /* ~«Справедливо. Вот три монеты».~ */ DO ~TakePartyGold(3)
~ GOTO 12
  IF ~~ THEN REPLY #7468 /* ~«Неважно».~ */ GOTO 11
END

IF ~~ THEN BEGIN 35 // from:
  SAY #30536 /* ~Воспользовавшись заминкой, проститутка сбегает.~ */
  IF ~~ THEN REPLY #30537 /* ~«Черт возьми, Анна...»~ */ DO ~EscapeArea()
~ EXIT
END
