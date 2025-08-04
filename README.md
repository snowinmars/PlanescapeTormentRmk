# PlanescapeTormentRmk
Rewriting Planescape:Torment on Renpy. I love this game.

Contact me via telegram `@snowinmars` or email `snowinmars@yandex.ru`, but I almost do not read it.

All the stuff is under GNU/GPLv3


## How to run

Run as Renpy project.


## How to dev

Ensure that `.coveragerc` is working: you should not run tests from omitted paths.

- Add stuff you want
- `cd /src`
- `python ./build.py` - regenerate `src/game/engine_data/settings/generated.py` and `src/d_renpy/*`
- `docker compose up` - test all the stuff you wrote, all tests should end succeessfully
- Open the `src\htmlcov\index.html` in browser. Make sure that coverage is at least 99%. Python is a runtime trash


### Test naming

If the rpy filename is `T.rpy`, than:
- for logic:
  - file name `T_logic.py` with class name `TLogic`
- for logic tests
  - file name `T_tests.py` with class name `TLogicTest`
