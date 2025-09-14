init 10 python:
    from game.engine.runtime import (runtime)
    from game.engine_data.menus.mortuary.f1r2.loot_logic import (MortuaryF1R2LootLogic)
    mortuaryF1R2LootLogic = MortuaryF1R2LootLogic(runtime.global_state_manager)
