init 10 python:
    from game.engine.runtime import (runtime)
    from game.engine_data.menus.mortuary.f2r4.mortuary_f2r4_loot_logic import (MortuaryF2R4LootLogic)
    mortuaryF2R4LootLogic = MortuaryF2R4LootLogic(runtime.global_state_manager)
