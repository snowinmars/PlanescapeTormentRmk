# PlanescapeTormentRmk
Rewriting Planescape:Torment on Renpy. I love this game.

Contact me via telegram @snowinmars

## How to run

Import as Renpy project. Run.

## Test

Python is a runtime trash, so I need to handle it properly.

Each rpy should not contain any logic. Each rpy should inject a python class with logic. Each python logic class should be 100% covered with tests.

Run them with:

- `cd /src/game`
- `pip install coverage`
- `coverage erase`
- `coverage run -m unittest discover -s . -p '*_tests.py'`
- `coverage html`

    The only exception is the `/src/game/script.rpy` - it is safe to fail it at runtime, because it's fast to check.

### Test naming

If the rpy filename is `T.rpy`, than:
- logic class name must be `TLogic`
- logic file name must be `T_logic.py`
- the logic test class name must be `TLogicTest`
- the logic test file name must be `T_tests.py`
