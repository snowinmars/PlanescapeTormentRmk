# PlanescapeTormentRmk


## [English](README_en.md)

Я переписываю Planescape:Torment на RenPy. Потому что я люблю эту игру, и потому что это нетривиально)

Мне можно написать в телеге `@snowinmars` или на почту `snowinmars@yandex.ru`, но я её почти не читаю.

Всё залицензировано под GNU/GPLv3.


## Скачать

- билд - [disk.yandex.ru](https://disk.yandex.ru/d/1vqwCTMVOBEbgA)
  - web - `PlanescapeTormentRmk-0.02-web.zip`
  - linux - `PlanescapeTormentRmk-0.02-linux.tar.bz2`
  - windows - `PlanescapeTormentRmk-0.02-win.zip`
- запустить в браузере
  - [itch.io](https://snowinmars.itch.io/planescapetormentrmk)
  - [gamejolt.com](https://gamejolt.com/games/planescapetormentrmk/1018976)
- git clone https://github.com/snowinmars/PlanescapeTormentRmk.git -> импорт в RenPy


## Как модицифировать

Убедись, что `.coveragerc` работает: не надо запускать тесты из omit.

- Добавь что хочешь
- `cd /src`
- `python ./build.py` - перегенерирует `src/game/engine_data/settings/generated.py` и `src/d_renpy/*`
- Скопируй `src/d_renpy/*` руками куда хочешь, проверяя корректность генерации
- `docker compose up` - всё протестируй, все тесты должны выполняться
- Открой `src\htmlcov\index.html` в браузере. Убедись, что покрытие составляет хотя бы 99%. Питон - сплошной косяк рантайма.


### Именование файлов

Если файл диалогов - `T.rpy`, то:
- файл конструкторов:
  - именуется `T_ctors.rpy`
- файл логики:
  - именуется `T_logic.py` с классом `TLogic`
- файл тестов для логики
  - именуется `T_tests.py` с классом `TLogicTest`


### Linter statistics

| version | dialogue blocks | words   | characters | average of words | characters per block | menus   | images | screens |
|---------|-----------------|---------|------------|------------------|----------------------|---------|--------|---------|
| 0.0.1   | 3386            | 40856   | 256536     | 12.1             | 76                   | 1451    | 65     | 51      |
| 0.0.2   | 3386            | 40856   | 256536     | 12.1             | 76                   | 1451    | 6      | 50      |
