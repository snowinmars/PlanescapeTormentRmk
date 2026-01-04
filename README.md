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
  - android - `rmk.torment.planescape-0.06-1767561262-release.apk` (НЕ работает)
  - joiPlay - запусти web build в JoiPlay (UI не оптимизирован под мобилки)
- запустить в браузере
  - [itch.io](https://snowinmars.itch.io/planescapetormentrmk)
  - [gamejolt.com](https://gamejolt.com/games/planescapetormentrmk/1018976)
  - [newgrounds.com](https://www.newgrounds.com/portal/view/1011470)
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

- db = dialogue blocks
- wd = words
- ch = characters
- aw = average of words
- cb = characters per block
- mn = menus
- im = images
- sc = screens

Версии 0.0.1 и 0.0.2 - только на русском.

Версии 0.0.3+ на осмысленных русском и английском и на выключенном выключенном чешском, немецком, французском, корейском и польском.

Russian:
| version | db   | wd    | ch     | aw   | cb  | mn   | im  | sc  |
| ------- | ---- | ----- | ------ | ---- | --- | ---- | --- | --- |
| 0.0.1   | 3386 | 40856 | 256536 | 12.1 | 76  | 1451 | 65  | 51  |
| 0.0.2   | 3386 | 40856 | 256536 | 12.1 | 76  | 1451 | 66  | 50  |
| 0.0.3   | 3326 | 40398 | 300003 | 12.1 | 90  | 1451 | 66  | 50  |
| 0.0.4   | 3327 | 40354 | 301097 | 12.1 | 91  | 1451 | 66  | 55  |
| 0.0.5   | 3327 | 40356 | 301102 | 12.1 | 91  | 1451 | 66  | 71  |
| 0.0.6   | 3328 | 40369 | 301208 | 12.1 | 91  | 1451 | 49  | 60  |

English:
| version | db   | wd    | ch     | aw   | cb  | mn   | im  | sc  |
| ------- | ---- | ----- | ------ | ---- | --- | ---- | --- | --- |
| 0.0.1   |      |       |        |      |     |      |     |     |
| 0.0.2   |      |       |        |      |     |      |     |     |
| 0.0.3   | 3412 | 48312 | 310091 | 14.2 | 91  | 1451 | 66  | 50  |
| 0.0.4   | 3427 | 48260 | 311739 | 14.1 | 91  | 1451 | 66  | 55  |
| 0.0.5   | 3427 | 48265 | 311789 | 14.1 | 91  | 1451 | 66  | 71  |
| 0.0.6   | 3429 | 48281 | 311888 | 14.1 | 91  | 1451 | 49  | 60  |

### Build statistic

- mz = windows-build size in kb
- lz = linux-build size in kb
- wz = web-build size in kb

 | version | mz     | lz     | wz     |
 | ------- | ------ | ------ | ------ |
 | 0.0.1   |        |        |        |
 | 0.0.2   | 136152 | 122013 | 151831 |
 | 0.0.3   | 140164 | 126037 | 155812 |
 | 0.0.4   | 186286 | 171286 | 201937 |
 | 0.0.5   | 189454 | 174551 | 205126 |
 | 0.0.6   | 195719 | 180889 | 212101 |