# PlanescapeTormentRmk


## [English](README_en.md)

Я переписываю Planescape:Torment на RenPy. Потому что я люблю эту игру, и потому что это нетривиально)

Мне можно написать в телеге `@snowinmars` или на почту `snowinmars@yandex.ru`.

Всё залицензировано под GNU/GPLv3.


## Скачать

- билд - [disk.yandex.ru](https://disk.yandex.ru/d/1vqwCTMVOBEbgA)
  - web - `PlanescapeTormentRmk-*-web.zip`
  - linux - `PlanescapeTormentRmk-*-linux.tar.bz2`
  - windows - `PlanescapeTormentRmk-*-win.zip`
  - mac - `PlanescapeTormentRmk-*-mac.zip`
  - android - `rmk.torment.planescape-*-*-release.apk` (НЕ работает)
  - joiPlay - запусти web build в JoiPlay (UI не оптимизирован под мобилки)
- запустить в браузере
  - [itch.io](https://snowinmars.itch.io/planescapetormentrmk)
  - [gamejolt.com](https://gamejolt.com/games/planescapetormentrmk/1018976)
  - [newgrounds.com](https://www.newgrounds.com/portal/view/1011470)
- git clone https://github.com/snowinmars/PlanescapeTormentRmk.git -> импорт в RenPy


## Разработка

См. [README.dev.md](_build/README.dev.md).


### Статистика

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
| 0.0.7   | 3330 | 40386 | 301336 | 12.1 | 90  | 1452 | 50  | 64  |
| 0.0.8   | 3344 | 40503 | 302258 | 12.1 | 90  | 1452 | 52  | 62  |
| 0.0.9   | 3347 | 40519 | 301726 | 12.1 | 90  | 1453 | 51  | 64  |
| 0.0.10  | 3347 | 40519 | 301726 | 12.1 | 90  | 1453 | 51  | 62  |

English:
| version | db   | wd    | ch     | aw   | cb  | mn   | im  | sc  |
| ------- | ---- | ----- | ------ | ---- | --- | ---- | --- | --- |
| 0.0.1   |      |       |        |      |     |      |     |     |
| 0.0.2   |      |       |        |      |     |      |     |     |
| 0.0.3   | 3412 | 48312 | 310091 | 14.2 | 91  | 1451 | 66  | 50  |
| 0.0.4   | 3427 | 48260 | 311739 | 14.1 | 91  | 1451 | 66  | 55  |
| 0.0.5   | 3427 | 48265 | 311789 | 14.1 | 91  | 1451 | 66  | 71  |
| 0.0.6   | 3429 | 48281 | 311888 | 14.1 | 91  | 1451 | 49  | 60  |
| 0.0.7   | 3431 | 48298 | 312013 | 14.1 | 91  | 1452 | 50  | 64  |
| 0.0.8   | 3445 | 48471 | 313078 | 14.1 | 91  | 1452 | 52  | 62  |
| 0.0.9   | 3447 | 48488 | 312526 | 14.1 | 91  | 1453 | 51  | 64  |
| 0.0.10  | 3447 | 48488 | 312526 | 14.1 | 91  | 1453 | 51  | 62  |

### Build statistic

- mz = windows-build size in kb
- lz = linux-build size in kb
- wz = web-build size in kb
- mc = mac-build size in kb

| version | mz     | lz     | wz     | mc     |
| ------- | ------ | ------ | ------ | ------ |
| 0.0.1   |        |        |        |        |
| 0.0.2   | 136152 | 122013 | 151831 |        |
| 0.0.3   | 140164 | 126037 | 155812 |        |
| 0.0.4   | 186286 | 171286 | 201937 |        |
| 0.0.5   | 189454 | 174551 | 205126 |        |
| 0.0.6   | 195719 | 180889 | 212101 |        |
| 0.0.7   | 197722 | 181624 | 214104 | 206651 |
| 0.0.8   | 201871 | 185572 | 218261 | 210800 |
| 0.0.9   | 223434 | 200887 | 239858 | 232364 |
| 0.0.10  | 194136 | 174128 | 208917 | 203065 |
