# PlanescapeTormentRmk


## [Russian](README.md)

Rewriting Planescape:Torment on Renpy. I love this game.

Contact me via telegram `@snowinmars` or email `snowinmars@yandex.ru`, but I almost do not read it.

All the stuff is under GNU/GPLv3


## Download

- web - [disk.yandex.ru](https://disk.yandex.ru/d/TTph3ogZGefF7A)
- linux - [disk.yandex.ru](https://disk.yandex.ru/d/HJ8LRoIef_Qggg)
- windows - [disk.yandex.ru](https://disk.yandex.ru/d/PlHSTvLyQIAUMQ)
- git clone https://github.com/snowinmars/PlanescapeTormentRmk.git -> import in RenPy


## How to dev

Ensure that `.coveragerc` is working: you should not run tests from omitted paths.

- Add stuff you want
- `cd /src`
- `python ./build.py` - regenerate `src/game/engine_data/settings/generated.py` and `src/d_renpy/*`
- `docker compose up` - test all the stuff you wrote, all tests should end succeessfully
- Open the `src\htmlcov\index.html` in browser. Make sure that coverage is at least 99%. Python is a runtime trash


### File naming

If the rpy filename is `T.rpy`, than:
- for constructors:
  - file name `T_ctors.rpy`
- for logic:
  - file name `T_logic.py` with class name `TLogic`
- for logic tests
  - file name `T_tests.py` with class name `TLogicTest`
