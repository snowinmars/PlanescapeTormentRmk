init 10 python:
    from game.engine.runtime import (runtime)
    from game.engine_data.menus.mortuary.f2r3.loot_logic import (MortuaryF2R3LootLogic)
    mortuaryF2R3LootLogic = MortuaryF2R3LootLogic(runtime.global_state_manager)
