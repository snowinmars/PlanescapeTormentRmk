init 10 python:
    from game.engine.runtime import (runtime)
    from game.engine_data.menus.mortuary.f3r3.mortuary_f3r3_loot_logic import (MortuaryF3R3LootLogic)
    mortuaryF3R3LootLogic = MortuaryF3R3LootLogic(runtime.global_state_manager)
