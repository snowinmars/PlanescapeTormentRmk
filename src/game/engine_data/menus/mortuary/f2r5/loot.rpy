init 10 python:
    from game.engine.runtime import (runtime)
    from game.engine_data.menus.mortuary.f2r5.mortuary_f2r5_loot_logic import (MortuaryF2R5LootLogic)
    mortuaryF2R5LootLogic = MortuaryF2R5LootLogic(runtime.global_state_manager)
