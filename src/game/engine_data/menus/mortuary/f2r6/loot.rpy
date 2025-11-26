init 10 python:
    from game.engine.runtime import (runtime)
    from game.engine_data.menus.mortuary.f2r6.mortuary_f2r6_loot_logic import (MortuaryF2R6LootLogic)
    mortuaryF2R6LootLogic = MortuaryF2R6LootLogic(runtime.global_state_manager)
