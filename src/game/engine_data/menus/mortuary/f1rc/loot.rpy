init 10 python:
    from game.engine.runtime import (runtime)
    from game.engine_data.menus.mortuary.f1rc.loot_logic import (MortuaryF1RcLootLogic)
    mortuaryF1RcLootLogic = MortuaryF1RcLootLogic(runtime.global_state_manager)
