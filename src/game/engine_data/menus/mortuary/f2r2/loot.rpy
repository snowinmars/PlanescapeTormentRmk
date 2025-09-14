init 10 python:
    from game.engine.runtime import (runtime)
    from game.engine_data.menus.mortuary.f2r2.loot_logic import (MortuaryF2R2LootLogic)
    mortuaryF2R2LootLogic = MortuaryF2R2LootLogic(runtime.global_state_manager)
