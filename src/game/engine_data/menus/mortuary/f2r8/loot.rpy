init 10 python:
    from game.engine.runtime import (runtime)
    from game.engine_data.menus.mortuary.f2r8.mortuary_f2r8_loot_logic import (MortuaryF2R8LootLogic)
    mortuaryF2R8LootLogic = MortuaryF2R8LootLogic(runtime.global_state_manager)
