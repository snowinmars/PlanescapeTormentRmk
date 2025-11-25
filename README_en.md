# PlanescapeTormentRmk


## [Russian](README.md)

Rewriting Planescape:Torment on Renpy. I love this game.

Contact me via telegram `@snowinmars` or email `snowinmars@yandex.ru`, but I almost do not read it.

All the stuff is under GNU/GPLv3


## Download

- prebuild - [disk.yandex.ru](https://disk.yandex.ru/d/1vqwCTMVOBEbgA)
  - web - `PlanescapeTormentRmk-0.02-web.zip`
  - linux - `PlanescapeTormentRmk-0.02-linux.tar.bz2`
  - windows - `PlanescapeTormentRmk-0.02-win.zip`
- run in browser
  - [itch.io](https://snowinmars.itch.io/planescapetormentrmk)
  - [gamejolt.com](https://gamejolt.com/games/planescapetormentrmk/1018976)
- git clone https://github.com/snowinmars/PlanescapeTormentRmk.git -> импорт в RenPy


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


### Linter statistics

| version | dialogue blocks | words   | characters | average of words | characters per block | menus   | images | screens |
|---------|-----------------|---------|------------|------------------|----------------------|---------|--------|---------|
| 0.0.1   | 3386            | 40856   | 256536     | 12.1             | 76                   | 1451    | 65     | 51      |
| 0.0.2   | 3386            | 40856   | 256536     | 12.1             | 76                   | 1451    | 6      | 50      |
