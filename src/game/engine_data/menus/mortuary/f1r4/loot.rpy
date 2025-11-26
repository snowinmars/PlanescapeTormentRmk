init 10 python:
    from game.engine.runtime import (runtime)
    from game.engine_data.menus.mortuary.f1r4.mortuary_f1r4_loot_logic import (MortuaryF1R4LootLogic)
    mortuaryF1R4LootLogic = MortuaryF1R4LootLogic(runtime.global_state_manager)
