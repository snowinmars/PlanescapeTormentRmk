// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNAMES.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DNAMES~

IF ~  Global("Death_of_Names","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #7288 /* ~Перед тобой тленный с кривой улыбкой, застывшей на его лице. Несмотря на улыбку, его глаза безжизненны. Правая рука короче левой, и он покачивает ее на перевязи, будто убаюкивая малое дитя.~ */
  IF ~~ THEN REPLY #7289 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #7290 /* ~Оставить мужчину в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #7291 /* ~Глаза тленного скользят по тебе. «Имя». Когда он произносит это слово, голос его звучит, как звон колокольчика.~ */
  IF ~~ THEN REPLY #7292 /* ~«Я... не знаю».~ */ GOTO 2
  IF ~~ THEN REPLY #7293 /* ~«Э... прости, что отвлек».~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 9.0
  SAY #7294 /* ~«Нет имени, нет имени, ничем не помогу тебе, — нараспев произносит тленный. — Нужно имя, чтобы увидеть, где оно умерло».~ */
  IF ~~ THEN REPLY #7295 /* ~«Что?»~ */ DO ~SetGlobal("Death_of_Names","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #7296 /* ~«Получив имя при рождении, верни его назад, когда оно тебе больше не нужно. Смерть-имен, Смерть-имен». Его глаза скользят по монолиту и по стенам. «Много имен похоронено здесь Смертью-имен. Скажи мне имя, и я покажу его могилу».~ */
  IF ~  GlobalGT("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #7297 /* ~«Захария».~ */ GOTO 10
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #7298 /* ~«Дейонарра».~ */ GOTO 10
  IF ~  GlobalGT("Dhall","GLOBAL",0)
!Dead("Dhall")
~ THEN REPLY #7299 /* ~«Дхолл».~ */ GOTO 4
  IF ~  GlobalGT("Dhall","GLOBAL",0)
Dead("Dhall")
Global("Death_of_Names_Dhall","GLOBAL",1)
~ THEN REPLY #7300 /* ~«Дхолл».~ */ GOTO 10
  IF ~  Global("Death_of_Names_Quentin","GLOBAL",1)
~ THEN REPLY #7301 /* ~~ */ GOTO 13
  IF ~~ THEN REPLY #7302 /* ~~ */ DO ~IncrementGlobalOnceEx("GLOBALAdahn_Death_of_Names_1","GLOBALAdahn",1)
~ GOTO 4
  IF ~~ THEN REPLY #7303 /* ~«Квентин».~ */ GOTO 5
  IF ~~ THEN REPLY #7304 /* ~«Э... Не знаю. Попробуй 'Адан'».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.2 3.5 5.3 5.5 9.4 9.7
  SAY #7305 /* ~Он качает головой. «Еще не умерло это имя. Не похоронено здесь. Еще не время, еще не время».~ */
  IF ~~ THEN REPLY #7306 /* ~«Давай попробуем другое имя...»~ */ GOTO 9
  IF ~~ THEN REPLY #7307 /* ~«Ты можешь похоронить для меня имя?»~ */ GOTO 5
  IF ~~ THEN REPLY #7308 /* ~«Хорошо... Извини, что отвлек».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.6 4.1 7.1 9.1 10.2 11.1 12.1 13.2 14.1 16.1
  SAY #7309 /* ~Он кивает, затем вынимает маленькую руку из перевязи на боку. Она атрофирована... по размерам не больше детской. «Чтоб похоронить, нужно звенелки заплатить. Три медяка, три».~ */
  IF ~  PartyGoldGT(2)
GlobalGT("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #7310 /* ~«Захария».~ */ GOTO 12
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #7311 /* ~«Дейонарра».~ */ GOTO 12
  IF ~  PartyGoldGT(2)
GlobalGT("Dhall","GLOBAL",0)
Dead("Dhall")
Global("Death_of_Names_Dhall","GLOBAL",0)
~ THEN REPLY #7312 /* ~«Дхолл».~ */ DO ~TakePartyGold(3)
SetGlobal("Death_of_Names_Dhall","GLOBAL",1)
~ GOTO 6
  IF ~  PartyGoldGT(2)
GlobalGT("Dhall","GLOBAL",0)
!Dead("Dhall")
~ THEN REPLY #7313 /* ~«Дхолл».~ */ GOTO 4
  IF ~  PartyGoldGT(2)
GlobalGT("Quentin","GLOBAL",0)
Dead("Quentin")
Global("Death_of_Names_Quentin","GLOBAL",0)
~ THEN REPLY #7314 /* ~~ */ DO ~TakePartyGold(3)
SetGlobal("Death_of_Names_Quentin","GLOBAL",1)
~ GOTO 15
  IF ~  PartyGoldGT(2)
GlobalGT("Quentin","GLOBAL",0)
!Dead("Quentin")
~ THEN REPLY #7315 /* ~~ */ GOTO 4
  IF ~  PartyGoldLT(3)
~ THEN REPLY #7316 /* ~~ */ EXIT
  IF ~~ THEN REPLY #7317 /* ~«Квентин».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #7350 /* ~Медяки падают в руку Смерти-Имен, и он прячет ее назад. Его глаза, закатившись, неожиданно оживают и взметаются в поисках места на монолите и стенах мемориала.~ */
  IF ~~ THEN REPLY #7351 /* ~Подождать...~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0 15.0
  SAY #7352 /* ~Он находит на стене место, быстро подходит к нему и наклоняется, затем принимается высекать что-то на стене. Спустя несколько минут он завершает работу, поднимается и возвращается к тебе. «Похоронено». Последнее слово заставляет тебя почувствовать себя неуютно.~ */
  IF ~~ THEN REPLY #7353 /* ~«Я хотел бы, чтобы ты поискал для меня имя...»~ */ GOTO 9
  IF ~~ THEN REPLY #7354 /* ~«Я хотел бы похоронить другое имя».~ */ GOTO 5
  IF ~~ THEN REPLY #7355 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~  GlobalGT("Death_of_Names","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #7356 /* ~Перед тобой Смерть-имен. Он стоит перед монументом с искривленной улыбкой, а его рука висит на перевязи.~ */
  IF ~~ THEN REPLY #7357 /* ~«Приветствую».~ */ GOTO 9
  IF ~~ THEN REPLY #7358 /* ~Оставить его в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.0 7.0 8.0 10.1 11.0 12.0 13.1 14.0 16.0
  SAY #7359 /* ~И снова глаза тленного глядят на тебя. «Имя». Когда он произносит это слово, голос его звучит, как звон колокольчика.~ */
  IF ~~ THEN REPLY #7360 /* ~«Я... не знаю».~ */ GOTO 2
  IF ~~ THEN REPLY #7361 /* ~«Я хотел бы похоронить имя».~ */ GOTO 5
  IF ~  GlobalGT("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #7362 /* ~«Захария».~ */ GOTO 10
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #7363 /* ~«Дейонарра».~ */ GOTO 10
  IF ~  GlobalGT("Dhall","GLOBAL",0)
!Dead("Dhall")
~ THEN REPLY #7364 /* ~«Дхолл».~ */ GOTO 4
  IF ~  GlobalGT("Dhall","GLOBAL",0)
Dead("Dhall")
Global("Death_of_Names_Dhall","GLOBAL",1)
~ THEN REPLY #7365 /* ~«Дхолл».~ */ GOTO 10
  IF ~  Global("Death_of_Names_Quentin","GLOBAL",1)
~ THEN REPLY #7366 /* ~«Сиси».~ */ GOTO 13
  IF ~~ THEN REPLY #7367 /* ~«Сиси».~ */ DO ~IncrementGlobalOnceEx("GLOBALAdahn_Death_of_Names_1","GLOBALAdahn",1)
~ GOTO 4
  IF ~~ THEN REPLY #7368 /* ~«Квентин».~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.0 3.1 3.3 9.2 9.3 9.5
  SAY #7369 /* ~Он закатывает глаза. Дико поблескивая, его взгляд пробегается по стенам монумента, с нечеловеческой скоростью просматривая имена. Затем он указывает на одну из стен. «Похоронено».~ */
  IF ~~ THEN REPLY #7370 /* ~Осмотреть то место, куда он указывает.~ */ GOTO 11
  IF ~~ THEN REPLY #7371 /* ~«У меня есть другое имя...»~ */ GOTO 9
  IF ~~ THEN REPLY #7372 /* ~«Я хотел бы похоронить имя».~ */ GOTO 5
  IF ~~ THEN REPLY #7373 /* ~«Просто проверяю. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #7374 /* ~Это то самое имя, которое ты запросил. Оно выбито на черном камне тонкой вязью, и практически теряется в море имен, окружающих его.~ */
  IF ~~ THEN REPLY #7375 /* ~«У меня есть другое имя...»~ */ GOTO 9
  IF ~~ THEN REPLY #7376 /* ~«Я хотел бы похоронить имя...»~ */ GOTO 5
  IF ~~ THEN REPLY #7377 /* ~«Просто проверяю. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.0 5.1
  SAY #7378 /* ~Он качает головой. «Похоронено». ~ */
  IF ~~ THEN REPLY #7380 /* ~«У меня есть другое имя...»~ */ GOTO 9
  IF ~~ THEN REPLY #7382 /* ~«Я хотел бы похоронить имя...»~ */ GOTO 5
  IF ~~ THEN REPLY #7383 /* ~«Просто проверяю. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.4 9.6
  SAY #7384 /* ~Он закатывает глаза. Дико поблескивая, его взгляд пробегается по стенам монумента, с нечеловеческой скоростью просматривая имена. Затем он указывает на одну из стен. «Похоронено».~ */
  IF ~~ THEN REPLY #7386 /* ~Осмотреть то место, куда он указывает.~ */ GOTO 14
  IF ~~ THEN REPLY #7387 /* ~«У меня есть другое имя...»~ */ GOTO 9
  IF ~~ THEN REPLY #7388 /* ~«Я хотел бы похоронить имя».~ */ GOTO 5
  IF ~~ THEN REPLY #7390 /* ~«Просто проверяю. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #7391 /* ~Имя Квентина, высеченное на черном камне слегка неровным почерком. К несчастью для Квентина, его имя не разломило монумент пополам, так и не оправдав его надежд.~ */
  IF ~~ THEN REPLY #7392 /* ~«У меня есть другое имя...»~ */ GOTO 9
  IF ~~ THEN REPLY #7394 /* ~«Я хотел бы похоронить имя...»~ */ GOTO 5
  IF ~~ THEN REPLY #7403 /* ~«Просто проверяю. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 5.4
  SAY #7404 /* ~Медяки падают в руку Смерти-Имен, и он прячет ее назад. Его глаза, закатившись, неожиданно оживают и взметаются в поисках места на монолите и стенах мемориала.~ */
  IF ~~ THEN REPLY #7405 /* ~Подождать...~ */ GOTO 7
END

IF ~~ THEN BEGIN 16 // from:
  SAY #7406 /* ~Он поворачивается к основанию монолита, быстро подбегает к нему, наклоняется и начинает что-то на нем высекать. К несчастью для Квентина, монумент не разломился после его имени. Мгновение спустя Смерть-имен завершает работу, поднимается и возвращается к тебе. «Похоронено». Последнее слово заставляет тебя почувствовать себя неуютно.~ */
  IF ~~ THEN REPLY #7407 /* ~«Я хотел бы, чтобы ты поискал для меня имя...»~ */ GOTO 9
  IF ~~ THEN REPLY #7408 /* ~«Я хотел бы похоронить другое имя».~ */ GOTO 5
  IF ~~ THEN REPLY #7409 /* ~«Спасибо. Прощай».~ */ EXIT
END
