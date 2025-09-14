init 10 python:
    from game.engine.runtime import (runtime)
    from game.engine_data.menus.mortuary.f1r3.loot_logic import (MortuaryF1R3LootLogic)
    mortuaryF1R3LootLogic = MortuaryF1R3LootLogic(runtime.global_state_manager)
