# PlanescapeTormentRmk


## [English](README_en.md)

Я переписываю Planescape:Torment на RenPy. Потому что я люблю эту игру, и потому что это нетривиально)

Мне можно написать в телеге `@snowinmars` или на почту `snowinmars@yandex.ru`, но я её почти не читаю.

Всё залицензировано под GNU/GPLv3.


## Скачать

- web - [disk.yandex.ru](https://disk.yandex.ru/d/TTph3ogZGefF7A)
- linux - [disk.yandex.ru](https://disk.yandex.ru/d/HJ8LRoIef_Qggg)
- windows - [disk.yandex.ru](https://disk.yandex.ru/d/PlHSTvLyQIAUMQ)
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
